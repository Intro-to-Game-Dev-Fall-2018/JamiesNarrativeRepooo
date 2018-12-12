using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour
{

	[SerializeField] private TextAsset inkJSONAsset;
	[SerializeField] private Story story;
	[SerializeField] private Canvas canvas;
	[SerializeField] private Text textPrefab;
	[SerializeField] private Button buttonPrefab;
	[SerializeField] private Image imagePrefab;
	[SerializeField] private Image backgroundimagePrefab;

	public Font Kinder;

	public Sprite Housebackground;
	public Sprite Playgroundbackground;
	public Sprite Kimmyhousebackground;
	public Sprite shopbackground;

	public Sprite Dana;
	public Sprite Kimmy;
	public Sprite Dean;
	public Sprite Jimmy;
	public Sprite Donna;
	public Sprite Mom;
	public Sprite MrsMunro;

	private int backroundselect;
	private int ChcSelect;


	[SerializeField] private RectTransform panelPrefab;

//Multiple option situation solution
	//A:4Choice1-2-3-4
	[SerializeField] private Button A1Prefab;
	[SerializeField] private Button A2Prefab;
	[SerializeField] private Button A3Prefab;

	[SerializeField] private Button A4Prefab;

	//B:3Choice1-2-3
	[SerializeField] private Button B1Prefab;
	[SerializeField] private Button B2Prefab;

	[SerializeField] private Button B3Prefab;

	//C:2Choice1-2
	[SerializeField] private Button C1Prefab;
	[SerializeField] private Button C2Prefab;


	void Awake()
	{
		// Remove the default message
		RemoveChildren();
		ChcSelect = 0;
		StartStory();
	}

	// Creates a new Story object with the compiled story which we can then play!
	void StartStory()
	{
		story = new Story(inkJSONAsset.text);
		RefreshView();
	}

	// This is the main function called every time the story changes. It does a few things:
	// Destroys all the old content and choices.
	// Continues over all the lines of text, then displays all the choices. If there are no choices, the story is finished!
	void RefreshView()
	{
		// Remove all the UI on screen
		RemoveChildren();

		// Read all the content until we can't continue any more
		while (story.canContinue)
		{
			// Continue gets the next line of the story
			string text = story.Continue();
			// This removes any white space from the text.
			text = text.Trim();
			//sprites
			
			if (text.Contains("Dana:"))
			{
				ChcSelect = 1;
			}
			
			if (text.Contains("Kimmy:"))
			{
				ChcSelect = 2;
			}
			
			if (text.Contains("Donna:"))
			{
				ChcSelect = 3;
			}
			
			if (text.Contains("Jimmy:"))
			{
				ChcSelect = 4;
			}
			
			if (text.Contains("Dean:"))
			{
				ChcSelect = 5;
			}
			
			if (text.Contains("Mom:"))
			{
				ChcSelect = 6;
			}
			
			if (text.Contains("Mrs.Munro:"))
			{
				ChcSelect = 7;
			}
			
			// Display the text on screen!
			CreateContentView(text);
		}

		// Display all the choices, if there are any!
		if (story.currentChoices.Count > 0)
		{

			if (story.currentChoices.Count == 4)
			{
				Choice choice1 = story.currentChoices[0];
				Button button1 = CreateChoiceViewA1(choice1.text.Trim());
				button1.onClick.AddListener(delegate { OnClickChoiceButton(choice1); });

				Choice choice2 = story.currentChoices[1];
				Button button2 = CreateChoiceViewA2(choice2.text.Trim());
				button2.onClick.AddListener(delegate { OnClickChoiceButton(choice2); });

				Choice choice3 = story.currentChoices[2];
				Button button3 = CreateChoiceViewA3(choice3.text.Trim());
				button3.onClick.AddListener(delegate { OnClickChoiceButton(choice3); });

				Choice choice4 = story.currentChoices[3];
				Button button4 = CreateChoiceViewA4(choice4.text.Trim());
				button4.onClick.AddListener(delegate { OnClickChoiceButton(choice4); });
			}

			else if (story.currentChoices.Count == 3)
			{
				Choice choice1 = story.currentChoices[0];
				Button button1 = CreateChoiceViewB1(choice1.text.Trim());
				button1.onClick.AddListener(delegate { OnClickChoiceButton(choice1); });

				Choice choice2 = story.currentChoices[1];
				Button button2 = CreateChoiceViewB2(choice2.text.Trim());
				button2.onClick.AddListener(delegate { OnClickChoiceButton(choice2); });

				Choice choice3 = story.currentChoices[2];
				Button button3 = CreateChoiceViewB3(choice3.text.Trim());
				button3.onClick.AddListener(delegate { OnClickChoiceButton(choice3); });

			}

			else if (story.currentChoices.Count == 2)
			{
				Choice choice1 = story.currentChoices[0];
				Button button1 = CreateChoiceViewC1(choice1.text.Trim());
				button1.onClick.AddListener(delegate { OnClickChoiceButton(choice1); });

				Choice choice2 = story.currentChoices[1];
				Button button2 = CreateChoiceViewC2(choice2.text.Trim());
				button2.onClick.AddListener(delegate { OnClickChoiceButton(choice2); });

			}

			else
			{
				for (int i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choice = story.currentChoices[i];

					Button button = CreateChoiceView(choice.text.Trim());
					// Tell the button what to do when we press it
					button.onClick.AddListener(delegate { OnClickChoiceButton(choice); });
				}
			}
		}

		// If we've read all the content and there's no choices, the story is finished!
		else
		{
			Button choice = CreateChoiceView("End of story.\nRestart?");
			choice.onClick.AddListener(delegate { StartStory(); });
		}
	}

	// When we click the choice button, tell the story to choose that choice!
	void OnClickChoiceButton(Choice choice)
	{
		if (choice.text.Contains("Neighborhood"))
		{
			backroundselect = 1;
		}

		if (choice.text.Contains("Playground"))
		{
			backroundselect = 2;
		}

		if (choice.text.Contains("Store"))
		{
			backroundselect = 3;
		}

		story.ChooseChoiceIndex(choice.index);
		RefreshView();

	}

	// Creates a button showing the choice text
	void CreateContentView(string text)
	{
		Text storyText = Instantiate(textPrefab) as Text;
		Image storyImage = Instantiate(imagePrefab) as Image;
		Image backgroundImage = Instantiate(backgroundimagePrefab) as Image;
		RectTransform panel = Instantiate(panelPrefab) as RectTransform;

		storyText.text = text;

		if (ChcSelect == 1)
		{
			storyText.font = Kinder;
			storyText.fontSize = 24;
			storyImage.sprite = Dana;
		}

		if (ChcSelect == 2)
		{
			storyText.font = Kinder;
			storyText.fontSize = 24;
			storyImage.sprite = Kimmy;
		}

		if (ChcSelect == 3)
		{
			storyText.font = Kinder;
			storyText.fontSize = 24;
			storyImage.sprite = Donna;
		}

		if (ChcSelect == 4)
		{
			storyText.font = Kinder;
			storyText.fontSize = 24;
			storyImage.sprite = Jimmy;
		}

		if (ChcSelect == 5)
		{
			storyText.font = Kinder;
			storyText.fontSize = 24;
			storyImage.sprite = Dean;
		}
		
		if (ChcSelect == 6)
		{
			storyText.font = Kinder;
			storyText.fontSize = 24;
			storyImage.sprite = Mom;
		}
		
		if (ChcSelect == 7)
		{
			storyText.font = Kinder;
			storyText.fontSize = 24;
			storyImage.sprite = MrsMunro;
		}

		if (backroundselect == 0)
		{
			backgroundImage.sprite = Housebackground;
		}

		if (backroundselect == 1)
		{
			backgroundImage.sprite = Kimmyhousebackground;
		}

		if (backroundselect == 2)
		{
			backgroundImage.sprite = Playgroundbackground;
		}

		if (backroundselect == 3)
		{
			backgroundImage.sprite = shopbackground;
		}

		backgroundImage.transform.SetParent(canvas.transform, false);
		panel.transform.SetParent(canvas.transform, false);
		storyText.transform.SetParent(canvas.transform, false);
		storyImage.transform.SetParent(canvas.transform, false);

	}

	Button CreateChoiceView(string text)
	{
		Button choice = Instantiate(buttonPrefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewA1(string text)
	{

		Button choice = Instantiate(A1Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewA2(string text)
	{
		Button choice = Instantiate(A2Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewA3(string text)
	{

		Button choice = Instantiate(A3Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewA4(string text)
	{

		Button choice = Instantiate(A4Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewB1(string text)
	{

		Button choice = Instantiate(B1Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewB2(string text)
	{

		Button choice = Instantiate(B2Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewB3(string text)
	{

		Button choice = Instantiate(B3Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewC1(string text)
	{

		Button choice = Instantiate(C1Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	Button CreateChoiceViewC2(string text)
	{

		Button choice = Instantiate(C2Prefab) as Button;

		choice.transform.SetParent(canvas.transform, false);

		Text choiceText = choice.GetComponentInChildren<Text>();
		choiceText.text = text;

		HorizontalLayoutGroup layoutGroup = choice.GetComponent<HorizontalLayoutGroup>();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}

	// Destroys all the children of this gameobject (all the UI)
	void RemoveChildren()
	{
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i)
		{
			GameObject.Destroy(canvas.transform.GetChild(i).gameObject);
		}

	}
}