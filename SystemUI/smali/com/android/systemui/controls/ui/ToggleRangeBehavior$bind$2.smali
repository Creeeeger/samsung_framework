.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

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
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 28
    .line 29
    const/16 v3, 0x2710

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    float-to-double v3, v3

    .line 46
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    cmpg-double v3, v3, v5

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    move v0, v4

    .line 56
    :cond_0
    xor-int/2addr v0, v4

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 58
    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    invoke-static {v0, p1, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p2, v0, :cond_5

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 23
    .line 24
    if-eqz v0, :cond_9

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 33
    .line 34
    iget-object v6, v5, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v6, v3

    .line 40
    :goto_0
    iget-object v5, v5, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    move-object v3, v5

    .line 45
    :cond_1
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 46
    .line 47
    invoke-virtual {v0, v4, v6, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->customTouch(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 53
    .line 54
    iget-boolean v4, v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 73
    .line 74
    iget-object v6, v5, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    move-object v3, v6

    .line 79
    :cond_4
    iget-boolean v5, v5, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 80
    .line 81
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 82
    .line 83
    invoke-virtual {v0, v4, v3, v5}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->toggle(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const/16 v0, 0x20

    .line 88
    .line 89
    if-ne p2, v0, :cond_7

    .line 90
    .line 91
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 111
    .line 112
    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_7
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-ne p2, v0, :cond_a

    .line 123
    .line 124
    if-eqz p3, :cond_a

    .line 125
    .line 126
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 127
    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_8

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 140
    .line 141
    sget-object v4, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v4}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const/4 v5, 0x0

    .line 160
    const v6, 0x461c4000    # 10000.0f

    .line 161
    .line 162
    .line 163
    invoke-static {v5, v6, v4, v3, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    float-to-int v0, v0

    .line 168
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 169
    .line 170
    iget-boolean v4, v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 171
    .line 172
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->endUpdateRange()V

    .line 178
    .line 179
    .line 180
    :cond_9
    :goto_1
    move v0, v2

    .line 181
    goto :goto_3

    .line 182
    :cond_a
    :goto_2
    move v0, v1

    .line 183
    :goto_3
    if-nez v0, :cond_b

    .line 184
    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    if-eqz p0, :cond_c

    .line 190
    .line 191
    :cond_b
    move v1, v2

    .line 192
    :cond_c
    return v1
.end method
