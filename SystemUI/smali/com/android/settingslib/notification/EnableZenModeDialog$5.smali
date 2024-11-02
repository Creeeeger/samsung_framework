.class public final Lcom/android/settingslib/notification/EnableZenModeDialog$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

.field public final synthetic val$row:Landroid/view/View;

.field public final synthetic val$rowId:I

.field public final synthetic val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$row:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 6
    .line 7
    iput p4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$rowId:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$row:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$rowId:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {p1, v0, v1, v3, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->-$$Nest$monClickTimeButton(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$5;->val$tag:Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
