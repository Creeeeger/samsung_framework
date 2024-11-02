.class public Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;
.super Lcom/android/systemui/tv/TvBottomSheetActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCancelButton:Landroid/widget/Button;

.field public mContent:Landroid/widget/TextView;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mIcon:Landroid/widget/ImageView;

.field public mPositiveButton:Landroid/widget/Button;

.field public mSecondIcon:Landroid/widget/ImageView;

.field public mSensor:I

.field public mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/tv/TvBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/high16 v0, 0x80000

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, -0x1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const p1, 0x7fffffff

    .line 28
    .line 29
    .line 30
    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_TOGGLE_TYPE:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 56
    .line 57
    if-eq v1, v0, :cond_3

    .line 58
    .line 59
    if-ne p1, v0, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v0, 0x1

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    new-instance p1, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {p1, p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    const p1, 0x7f0a0184

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 86
    .line 87
    const p1, 0x7f0a017f

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 97
    .line 98
    const p1, 0x7f0a0180

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/ImageView;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 108
    .line 109
    const p1, 0x7f0a0183

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/widget/ImageView;

    .line 117
    .line 118
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 119
    .line 120
    const p1, 0x7f0a0182

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/Button;

    .line 128
    .line 129
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mPositiveButton:Landroid/widget/Button;

    .line 130
    .line 131
    const p1, 0x7f0a0181

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/Button;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mCancelButton:Landroid/widget/Button;

    .line 141
    .line 142
    const/high16 v0, 0x1040000

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mCancelButton:Landroid/widget/Button;

    .line 148
    .line 149
    new-instance v0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda1;

    .line 150
    .line 151
    invoke-direct {v0, p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->updateUI()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 4
    .line 5
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->updateUI()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 10
    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final updateUI()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f050044

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const v0, 0x7f06006a

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const v1, 0x7f071509    # 1.79555E38f

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const v2, 0x7f071508

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 119
    .line 120
    .line 121
    iget v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    const/16 v3, 0x8

    .line 127
    .line 128
    if-eq v0, v2, :cond_4

    .line 129
    .line 130
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 140
    .line 141
    const v2, 0x7f130fbd

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 148
    .line 149
    const-string/jumbo v2, "receive_explicit_user_interaction_audio_enabled"

    .line 150
    .line 151
    .line 152
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-ne v1, v0, :cond_1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    const/4 v0, 0x0

    .line 160
    :goto_1
    if-eqz v0, :cond_2

    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 163
    .line 164
    const v1, 0x7f130fbb

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 172
    .line 173
    const v1, 0x7f130fba

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    .line 178
    .line 179
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 180
    .line 181
    const v1, 0x7f081309

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 194
    .line 195
    const v1, 0x7f130fbe

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 202
    .line 203
    const v1, 0x7f130fbf

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 210
    .line 211
    const v1, 0x1080536

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 218
    .line 219
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_4
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_5

    .line 230
    .line 231
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 232
    .line 233
    const v1, 0x7f130fb4

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 240
    .line 241
    const v1, 0x7f130fb3

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 248
    .line 249
    const v1, 0x7f081308

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 256
    .line 257
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 262
    .line 263
    const v1, 0x7f130fb5

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 270
    .line 271
    const v1, 0x7f130fb6

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 278
    .line 279
    const v1, 0x108038e

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 286
    .line 287
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    .line 289
    .line 290
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 297
    .line 298
    if-eqz v1, :cond_6

    .line 299
    .line 300
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 301
    .line 302
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 303
    .line 304
    .line 305
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mPositiveButton:Landroid/widget/Button;

    .line 306
    .line 307
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mCancelButton:Landroid/widget/Button;

    .line 311
    .line 312
    const v0, 0x104000a

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    .line 316
    .line 317
    .line 318
    return-void
.end method
