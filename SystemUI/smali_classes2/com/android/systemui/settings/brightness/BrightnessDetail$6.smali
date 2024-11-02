.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$6;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const v0, 0x7f131117

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const v0, 0x7f131116

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessContainer:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    const v1, 0x7f0a0bd9

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mExtraBrightnessSummary:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", "

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, ", Switch"

    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-class p0, Landroid/widget/Switch;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
