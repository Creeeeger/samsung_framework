.class public final Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;
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
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;->$this_apply:Landroidx/preference/SwitchPreferenceCompat;

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
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;->$this_apply:Landroidx/preference/SwitchPreferenceCompat;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$2$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 10
    .line 11
    new-instance p1, Lcom/android/systemui/controls/ui/util/SALogger$Event$SettingsControlDevicesOnOff;

    .line 12
    .line 13
    iget-boolean v1, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 14
    .line 15
    invoke-direct {p1, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$SettingsControlDevicesOnOff;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, v0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-boolean p1, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 28
    .line 29
    const-string v0, "lockscreen_allow_trivial_controls"

    .line 30
    .line 31
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
