.class public final Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $this_apply:Landroidx/preference/SwitchPreferenceCompat;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->$this_apply:Landroidx/preference/SwitchPreferenceCompat;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 3

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->$this_apply:Landroidx/preference/SwitchPreferenceCompat;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 10
    .line 11
    new-instance v1, Lcom/android/systemui/controls/ui/util/SALogger$Event$SettingsShowDevicesOnOff;

    .line 12
    .line 13
    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/android/systemui/controls/ui/util/SALogger$Event$SettingsShowDevicesOnOff;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 28
    .line 29
    const-string v2, "lockscreen_show_controls"

    .line 30
    .line 31
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 35
    .line 36
    sget p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->$r8$clinit:I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->updatePreference(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
