// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == FoodaxAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == FoodaxAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == FoodaxAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == FoodaxAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Query": return FoodaxAPI.Objects.Query
    case "Recipe": return FoodaxAPI.Objects.Recipe
    case "ActivityLog": return FoodaxAPI.Objects.ActivityLog
    case "Aggregate": return FoodaxAPI.Objects.Aggregate
    case "AppointmentType": return FoodaxAPI.Objects.AppointmentType
    case "ArticleRecommended": return FoodaxAPI.Objects.ArticleRecommended
    case "Assessment": return FoodaxAPI.Objects.Assessment
    case "AssessmentAnswer": return FoodaxAPI.Objects.AssessmentAnswer
    case "AssessmentQuestion": return FoodaxAPI.Objects.AssessmentQuestion
    case "BiomarkerCategory": return FoodaxAPI.Objects.BiomarkerCategory
    case "BiomarkerUnit": return FoodaxAPI.Objects.BiomarkerUnit
    case "BrandedFoodNode": return FoodaxAPI.Objects.BrandedFoodNode
    case "Coach": return FoodaxAPI.Objects.Coach
    case "CoachTeam": return FoodaxAPI.Objects.CoachTeam
    case "CoachType": return FoodaxAPI.Objects.CoachType
    case "CommonFoodNode": return FoodaxAPI.Objects.CommonFoodNode
    case "ContentCategoryType": return FoodaxAPI.Objects.ContentCategoryType
    case "ContentLibraryType": return FoodaxAPI.Objects.ContentLibraryType
    case "ContentTagType": return FoodaxAPI.Objects.ContentTagType
    case "Cuisine": return FoodaxAPI.Objects.Cuisine
    case "DailyRecapAnswer": return FoodaxAPI.Objects.DailyRecapAnswer
    case "Depletion": return FoodaxAPI.Objects.Depletion
    case "Drug": return FoodaxAPI.Objects.Drug
    case "DrugGroup": return FoodaxAPI.Objects.DrugGroup
    case "EdamamFoodResult": return FoodaxAPI.Objects.EdamamFoodResult
    case "GooglePlayTransactionType": return FoodaxAPI.Objects.GooglePlayTransactionType
    case "Interaction": return FoodaxAPI.Objects.Interaction
    case "JourneyProfileType": return FoodaxAPI.Objects.JourneyProfileType
    case "ListItem": return FoodaxAPI.Objects.ListItem
    case "Logger": return FoodaxAPI.Objects.Logger
    case "MealLog": return FoodaxAPI.Objects.MealLog
    case "MealPlanTemplate": return FoodaxAPI.Objects.MealPlanTemplate
    case "MenuItem": return FoodaxAPI.Objects.MenuItem
    case "MyBrandedFood": return FoodaxAPI.Objects.MyBrandedFood
    case "MyChecklistItem": return FoodaxAPI.Objects.MyChecklistItem
    case "MyCommonFood": return FoodaxAPI.Objects.MyCommonFood
    case "Note": return FoodaxAPI.Objects.Note
    case "ProductType": return FoodaxAPI.Objects.ProductType
    case "ProfileBiomarker": return FoodaxAPI.Objects.ProfileBiomarker
    case "Program": return FoodaxAPI.Objects.Program
    case "Protocol": return FoodaxAPI.Objects.Protocoll
    case "RecipeTag": return FoodaxAPI.Objects.RecipeTag
    case "Restaurant": return FoodaxAPI.Objects.Restaurant
    case "Restriction": return FoodaxAPI.Objects.Restriction
    case "SubscriptionTransaction": return FoodaxAPI.Objects.SubscriptionTransaction
    case "SubscriptionType": return FoodaxAPI.Objects.SubscriptionType
    case "Supplement": return FoodaxAPI.Objects.Supplement
    case "SupplementPlan": return FoodaxAPI.Objects.SupplementPlan
    case "SupplementRecommended": return FoodaxAPI.Objects.SupplementRecommended
    case "ThirdPartyAppCustomization": return FoodaxAPI.Objects.ThirdPartyAppCustomization
    case "ThirdPartyDailyRecapQuestion": return FoodaxAPI.Objects.ThirdPartyDailyRecapQuestion
    case "UsdaFood": return FoodaxAPI.Objects.UsdaFood
    case "User": return FoodaxAPI.Objects.User
    case "UserAnswer": return FoodaxAPI.Objects.UserAnswer
    case "UserProgress": return FoodaxAPI.Objects.UserProgress
    case "UserRecipe": return FoodaxAPI.Objects.UserRecipe
    case "Ingredient": return FoodaxAPI.Objects.Ingredient
    case "RecipeSearchResult": return FoodaxAPI.Objects.RecipeSearchResult
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
