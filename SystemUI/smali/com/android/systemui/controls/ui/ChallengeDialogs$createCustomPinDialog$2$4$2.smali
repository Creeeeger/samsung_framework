.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $editText:Landroid/widget/EditText;

.field public final synthetic $useAlphaCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;->$editText:Landroid/widget/EditText;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;->$editText:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p1, v0, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
