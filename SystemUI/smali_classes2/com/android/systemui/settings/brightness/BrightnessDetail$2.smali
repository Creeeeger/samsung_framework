.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$2;
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
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

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
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->-$$Nest$msetExtraBrightnessLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
