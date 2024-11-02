.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$1$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

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
    .locals 2

    .line 1
    xor-int/lit8 p1, p2, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->-$$Nest$msetBrightness(Lcom/android/systemui/settings/brightness/BrightnessDetail$1;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const p2, 0x7f131117

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const p2, 0x7f131116

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
