using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;
using TMPro;

public class StoryController : MonoBehaviour {

	
	[SerializeField]
	private TextAsset _inkJSONAsset;
	private Story _story;
	
	[SerializeField]
	private GameObject canvasLayout;

	// UI Prefabs
	[SerializeField]
	private TextMeshProUGUI textPrefab;
	[SerializeField]
	private Button buttonPrefab;
	
	private bool _haveChoice;
	private bool _needClick;
	
	void Awake () {
		// Remove the default message
		RemoveChildren();
		StartStory();
	}

	// Creates a new Story object with the compiled story which we can then play!
	private void StartStory () {
		_story = new Story (_inkJSONAsset.text);
	}

	private void Update()
	{
		if (_story.canContinue && !_needClick)
		{
			var text = _story.Continue();
			text = text.Trim();
			CreateContentView(text);
			_needClick = true;
		}

		if (_needClick && (Input.GetKeyUp(KeyCode.Space) || Input.GetKeyUp(KeyCode.Return)))
		{
			_needClick = false;
			if (_story.currentChoices.Count > 0) return;
			RemoveChildren();
		}

		if (_haveChoice) return;
		if(_story.currentChoices.Count > 0)
		{
			foreach (var choice in _story.currentChoices)
			{
				var button = CreateChoiceView (choice.text.Trim ());
				var choice1 = choice;
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choice1);
				});
			}

			_haveChoice = true;
		}
		else if (_story.currentChoices.Count <= 0 && !_story.canContinue){
			var choice = CreateChoiceView("End of story.\nRestart?");
			choice.onClick.AddListener(delegate{
				StartStory();
			});
		}
	}

	// When we click the choice button, tell the story to choose that choice!
	private void OnClickChoiceButton (Choice choice) {
		_story.ChooseChoiceIndex (choice.index);
		RemoveChildren();
		_haveChoice = false;
		_needClick = false;
	}

	// Creates a button showing the choice text
	void CreateContentView (string text) {
		TextMeshProUGUI storyText = Instantiate (textPrefab);
		storyText.text = text;
		storyText.transform.SetParent (canvasLayout.transform, false);
	}

	// Creates a button showing the choice text
	Button CreateChoiceView (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (canvasLayout.transform, false);
		
		// Gets the text from the button prefab
		TextMeshProUGUI choiceText = choice.GetComponentInChildren<TextMeshProUGUI> ();
		choiceText.text = text;

		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren () {
		int childCount = canvasLayout.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvasLayout.transform.GetChild (i).gameObject);
		}
	}
}


