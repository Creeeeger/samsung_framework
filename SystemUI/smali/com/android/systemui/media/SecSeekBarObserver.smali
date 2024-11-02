.class public final Lcom/android/systemui/media/SecSeekBarObserver;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final holder:Lcom/android/systemui/media/SecPlayerViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecPlayerViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p1, v1

    .line 42
    :goto_0
    const-string v0, ""

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    move-object v1, p0

    .line 52
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-boolean v3, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    const/16 v4, 0xff

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v4, v2

    .line 73
    :goto_1
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget v4, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move-object v0, v1

    .line 98
    :goto_2
    int-to-long v4, v4

    .line 99
    const-wide/16 v6, 0x3e8

    .line 100
    .line 101
    div-long/2addr v4, v6

    .line 102
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 122
    .line 123
    .line 124
    iget-object v4, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz v4, :cond_5

    .line 127
    .line 128
    move-object v1, v4

    .line 129
    :cond_5
    int-to-long v4, v0

    .line 130
    div-long/2addr v4, v6

    .line 131
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 139
    .line 140
    const/4 v1, 0x1

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    move v0, v1

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    move v0, v2

    .line 146
    :goto_3
    if-eqz v0, :cond_8

    .line 147
    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    instance-of v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 159
    .line 160
    if-nez v0, :cond_8

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v4, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-direct {v4, v5}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;-><init>(Landroid/widget/SeekBar;)V

    .line 173
    .line 174
    .line 175
    iget-object v5, v4, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    .line 176
    .line 177
    iget v6, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarPrimaryColor:I

    .line 178
    .line 179
    iput v6, v5, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    .line 180
    .line 181
    iget v6, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarSecondaryColor:I

    .line 182
    .line 183
    iput v6, v5, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 184
    .line 185
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    instance-of v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 197
    .line 198
    if-eqz v0, :cond_c

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 209
    .line 210
    iget-boolean v4, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    .line 211
    .line 212
    if-eqz v4, :cond_9

    .line 213
    .line 214
    iget-boolean p1, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    .line 215
    .line 216
    if-nez p1, :cond_9

    .line 217
    .line 218
    if-eqz v3, :cond_9

    .line 219
    .line 220
    move v2, v1

    .line 221
    :cond_9
    iget-boolean p1, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->active:Z

    .line 222
    .line 223
    if-ne p1, v2, :cond_a

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_a
    iput-boolean v2, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->active:Z

    .line 227
    .line 228
    iget-object p1, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->motionActivityAnimator$delegate:Lkotlin/Lazy;

    .line 229
    .line 230
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    check-cast p1, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 235
    .line 236
    if-eqz v2, :cond_b

    .line 237
    .line 238
    const/high16 v0, 0x3f800000    # 1.0f

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_b
    const/4 v0, 0x0

    .line 242
    :goto_4
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    .line 243
    .line 244
    .line 245
    :goto_5
    if-nez v3, :cond_c

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 252
    .line 253
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    .line 255
    .line 256
    :cond_c
    :goto_6
    return-void
.end method
