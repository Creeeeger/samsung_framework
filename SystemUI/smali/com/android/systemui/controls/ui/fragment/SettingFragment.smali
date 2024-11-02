.class public final Lcom/android/systemui/controls/ui/fragment/SettingFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

.field public screen:Landroidx/preference/PreferenceScreen;

.field public showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/SALogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 2
    .line 3
    if-eqz p1, :cond_c

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 12
    .line 13
    const v2, 0x7f170015

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v2, v1}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->onDetached()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-object p1, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 33
    .line 34
    move p1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iput-boolean v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 40
    .line 41
    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    const-string/jumbo p1, "screen"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    .line 76
    .line 77
    const-string p1, "ControlsSettingsUseWhilePhoneIsLocked"

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 84
    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 89
    .line 90
    const-string p1, "ControlsSettingsControlWhilePhoneIsLocked"

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 97
    .line 98
    if-nez p1, :cond_6

    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_7

    .line 107
    .line 108
    move-object p1, v0

    .line 109
    :cond_7
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_TABLET:Z

    .line 110
    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const v3, 0x7f13040f

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const v3, 0x7f130413

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    new-instance v2, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;

    .line 142
    .line 143
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;-><init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;Landroidx/preference/SwitchPreferenceCompat;)V

    .line 144
    .line 145
    .line 146
    iput-object v2, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 149
    .line 150
    if-nez p1, :cond_9

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_9
    move-object v0, p1

    .line 154
    :goto_2
    if-eqz v1, :cond_a

    .line 155
    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const v1, 0x7f130401

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const v1, 0x7f130403

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    new-instance p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;

    .line 185
    .line 186
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;-><init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;Landroidx/preference/SwitchPreferenceCompat;)V

    .line 187
    .line 188
    .line 189
    iput-object p1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 190
    .line 191
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 192
    .line 193
    if-eqz p1, :cond_b

    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 196
    .line 197
    sget-object p1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$Settings;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$Settings;

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 200
    .line 201
    .line 202
    :cond_b
    return-void

    .line 203
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    .line 204
    .line 205
    const-string p1, "This should be called after super.onCreate."

    .line 206
    .line 207
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const v2, 0x7f1303e6

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const p2, 0x7f0600d9

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public final onResume()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->showDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    move-object v1, v2

    .line 10
    :cond_0
    iget-object v3, v1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "lockscreen_show_controls"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    move v3, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v3, v5

    .line 28
    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    iget-boolean v1, v1, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->updatePreference(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 37
    .line 38
    if-nez p0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v2, p0

    .line 42
    :goto_1
    iget-object p0, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v1, "lockscreen_allow_trivial_controls"

    .line 49
    .line 50
    invoke-static {p0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move v0, v5

    .line 58
    :goto_2
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final updatePreference(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    move-object p1, v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :cond_1
    iget-object v1, v1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-eqz p1, :cond_3

    .line 26
    .line 27
    return-void

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    .line 29
    .line 30
    if-nez p1, :cond_4

    .line 31
    .line 32
    move-object p1, v0

    .line 33
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 34
    .line 35
    if-nez p0, :cond_5

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_5
    move-object v0, p0

    .line 39
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->screen:Landroidx/preference/PreferenceScreen;

    .line 44
    .line 45
    if-nez p1, :cond_7

    .line 46
    .line 47
    move-object p1, v0

    .line 48
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->controlDevicePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 49
    .line 50
    if-nez p0, :cond_8

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_8
    move-object v0, p0

    .line 54
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)V

    .line 55
    .line 56
    .line 57
    :goto_3
    return-void
.end method
