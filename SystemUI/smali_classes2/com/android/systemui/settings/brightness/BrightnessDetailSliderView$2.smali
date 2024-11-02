.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->-$$Nest$misAutoChecked(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_3

    .line 8
    .line 9
    sget-boolean p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    if-eqz p3, :cond_3

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 16
    .line 17
    iget p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    .line 18
    .line 19
    if-gt p3, p2, :cond_2

    .line 20
    .line 21
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const p2, 0x10e010a

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    iget-object p2, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mPowerManager:Landroid/os/PowerManager;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const p3, 0x7f140560

    .line 41
    .line 42
    .line 43
    if-le p0, p2, :cond_0

    .line 44
    .line 45
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 46
    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    new-instance p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 50
    .line 51
    iget-object p2, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    iput-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 57
    .line 58
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const p2, 0x7f130f10

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iget-object p2, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 72
    .line 73
    iget-object p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    const v0, 0x7f130f14

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 90
    .line 91
    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 95
    .line 96
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-direct {p2, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    .line 99
    .line 100
    .line 101
    const p3, 0x7f130f13

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 108
    .line 109
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda1;

    .line 110
    .line 111
    invoke-direct {p2}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda1;-><init>()V

    .line 112
    .line 113
    .line 114
    const p3, 0x7f130f11

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 121
    .line 122
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;

    .line 123
    .line 124
    invoke-direct {p2, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 137
    .line 138
    if-nez p0, :cond_1

    .line 139
    .line 140
    new-instance p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 141
    .line 142
    iget-object p2, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 145
    .line 146
    .line 147
    iput-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 148
    .line 149
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    const p2, 0x7f130f0f

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    iget-object p2, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 163
    .line 164
    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 168
    .line 169
    const p2, 0x7f130f12

    .line 170
    .line 171
    .line 172
    const/4 p3, 0x0

    .line 173
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 177
    .line 178
    new-instance p2, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$4;

    .line 179
    .line 180
    invoke-direct {p2, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 189
    .line 190
    .line 191
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 193
    .line 194
    if-eqz p1, :cond_3

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_3

    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 207
    .line 208
    .line 209
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 210
    .line 211
    iget p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    .line 212
    .line 213
    const/4 v0, 0x0

    .line 214
    if-gt p3, p2, :cond_4

    .line 215
    .line 216
    iget-boolean p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    .line 217
    .line 218
    if-eqz p3, :cond_4

    .line 219
    .line 220
    const/4 p3, 0x1

    .line 221
    goto :goto_1

    .line 222
    :cond_4
    move p3, v0

    .line 223
    :goto_1
    invoke-virtual {p1, p3}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setDualSeekBarResources(Z)V

    .line 224
    .line 225
    .line 226
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    .line 229
    .line 230
    if-eqz p1, :cond_5

    .line 231
    .line 232
    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    .line 233
    .line 234
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 235
    .line 236
    invoke-virtual {p1, p2, p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    .line 237
    .line 238
    .line 239
    :cond_5
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    .line 5
    .line 6
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setDualSeekBarResources(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->getValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v1, 0x1

    .line 22
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 23
    .line 24
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 28
    .line 29
    const-string p1, "detail panel"

    .line 30
    .line 31
    const-string v0, "QUICK_PANEL_LAYOUT"

    .line 32
    .line 33
    const-string v1, "QPPE1009"

    .line 34
    .line 35
    const-string v2, "location"

    .line 36
    .line 37
    invoke-static {p0, v1, v2, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
