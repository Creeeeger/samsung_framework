.class public final Landroidx/picker3/widget/SeslColorPicker$17;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

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
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 13
    .line 14
    iget-object v2, v2, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :try_start_0
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 23
    .line 24
    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string v4, "input_method"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 33
    .line 34
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_0
    move v3, v2

    .line 49
    :goto_1
    if-ge v3, v0, :cond_3

    .line 50
    .line 51
    sget v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    .line 52
    .line 53
    if-ge v3, v4, :cond_3

    .line 54
    .line 55
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 56
    .line 57
    iget-object v4, v4, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 70
    .line 71
    iput-boolean v1, v4, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 72
    .line 73
    iget-object v4, v4, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 86
    .line 87
    iget-object v5, v5, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 88
    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    iput-object v6, v5, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    iput v6, v5, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 104
    .line 105
    iget-object v6, v5, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    iget-object v5, v5, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    .line 112
    .line 113
    invoke-static {v6, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 114
    .line 115
    .line 116
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 119
    .line 120
    .line 121
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 122
    .line 123
    invoke-virtual {v5, v4}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 124
    .line 125
    .line 126
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 127
    .line 128
    iget-object v5, v5, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    .line 129
    .line 130
    if-eqz v5, :cond_1

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 137
    .line 138
    iget-object v6, v6, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 139
    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v8, ""

    .line 143
    .line 144
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    const-string v10, "%d"

    .line 160
    .line 161
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 176
    .line 177
    iget-object v6, v6, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 178
    .line 179
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 188
    .line 189
    .line 190
    :cond_1
    iget-object v5, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 191
    .line 192
    iget-object v5, v5, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    .line 193
    .line 194
    if-eqz v5, :cond_2

    .line 195
    .line 196
    invoke-virtual {v5, v4}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->onColorChanged(I)V

    .line 197
    .line 198
    .line 199
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 204
    .line 205
    iput-boolean v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    .line 206
    .line 207
    return-void
.end method
