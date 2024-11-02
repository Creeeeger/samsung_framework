.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->-$$Nest$msetExtraBrightnessLogic(Lcom/android/systemui/settings/brightness/BrightnessDetail;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const p2, 0x7f131117

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const p2, 0x7f131116

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
