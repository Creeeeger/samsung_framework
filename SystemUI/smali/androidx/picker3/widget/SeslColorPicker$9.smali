.class public final Landroidx/picker3/widget/SeslColorPicker$9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 5
    .line 6
    iput-boolean v0, p3, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 7
    .line 8
    iput-boolean v0, p3, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    int-to-float p3, p3

    .line 15
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    div-float/2addr p3, v1

    .line 21
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationProgress:I

    .line 30
    .line 31
    const-string p1, "%d"

    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    if-ltz p2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 38
    .line 39
    iget-boolean v3, v2, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    .line 40
    .line 41
    if-ne v3, v0, :cond_1

    .line 42
    .line 43
    iget-object v2, v2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 77
    .line 78
    iget-object v2, v2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 92
    .line 93
    iget-boolean v3, v2, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    iput-boolean v0, v2, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    .line 99
    .line 100
    iget-object v0, v2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 134
    .line 135
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    .line 136
    .line 137
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 149
    .line 150
    iput-boolean v4, p1, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    .line 151
    .line 152
    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 153
    .line 154
    iget-boolean p2, p1, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    .line 155
    .line 156
    if-nez p2, :cond_3

    .line 157
    .line 158
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 159
    .line 160
    invoke-virtual {p1, p3}, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->setV(F)V

    .line 161
    .line 162
    .line 163
    :cond_3
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 164
    .line 165
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 166
    .line 167
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 174
    .line 175
    iget-boolean p3, p2, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    .line 176
    .line 177
    if-eqz p3, :cond_4

    .line 178
    .line 179
    invoke-virtual {p2, p1}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    .line 180
    .line 181
    .line 182
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 183
    .line 184
    iput-boolean v4, p2, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    .line 185
    .line 186
    :cond_4
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 187
    .line 188
    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 189
    .line 190
    if-eqz p2, :cond_5

    .line 191
    .line 192
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 193
    .line 194
    .line 195
    :cond_5
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 196
    .line 197
    iget-object p3, p2, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    .line 198
    .line 199
    if-eqz p3, :cond_6

    .line 200
    .line 201
    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    .line 202
    .line 203
    iget p2, p2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    .line 204
    .line 205
    invoke-virtual {p3, p1, p2}, Landroidx/picker3/widget/SeslOpacitySeekBar;->changeColorBase(II)V

    .line 206
    .line 207
    .line 208
    :cond_6
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 209
    .line 210
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    .line 211
    .line 212
    if-eqz p0, :cond_7

    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->onColorChanged(I)V

    .line 215
    .line 216
    .line 217
    :cond_7
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v0, "input_method"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    .line 5
    .line 6
    return-void
.end method
