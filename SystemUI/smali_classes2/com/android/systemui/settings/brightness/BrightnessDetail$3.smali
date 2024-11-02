.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->-$$Nest$msetExtraBrightnessLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
