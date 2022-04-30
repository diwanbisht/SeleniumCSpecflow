Feature: ActionsTest
	Simple calculator for adding two numbers

Scenario: ValidateFileUploadMethod1
	Given I navigate to '<FileUploadUrl>' page
	When I Upload the file from Localdrive

	Examples:
		| FileUploadUrl                                    | UserName | Password     |
		| https://www.monsterindia.com/seeker/registration | Test     | Testing@1234 |

Scenario: ValidateFileUploadMethod2
	Given I navigate to '<FileUploadUrl>' page
	When I Upload the file from Localdrive1

	Examples:
		| FileUploadUrl                        | UserName | Password     |
		| https://demo.guru99.com/test/upload/ | Test     | Testing@1234 |

Scenario: ValidateDragAndDropMethod1
	Given I navigate to '<FileDragableAndDropUrl>' page
	When I Upload the file from Localdrive3

	Examples:
		| FileDragableAndDropUrl                          | UserName | Password     |
		| http://www.uitestpractice.com/Students/Actions/ | Test     | Testing@1234 |

Scenario: ValidateDoubleClick
	Given I navigate to '<DoubleClickUrl>' page
	When I DoubleClick on button

	Examples:
		| DoubleClickUrl                                  | UserName | Password     |
		| http://www.uitestpractice.com/Students/Actions/ | Test     | Testing@1234 |

Scenario: ValidateRightClick
	Given I navigate to '<RightClickUrl>' page
	When I RightClick on button

	Examples:
		| RightClickUrl                                  | UserName | Password     |
		| http://www.uitestpractice.com/Students/Actions/ | Test     | Testing@1234 |