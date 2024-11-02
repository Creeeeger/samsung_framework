.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$5;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$5;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v0, "swipe_directly_to_quick_setting"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->onOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const v1, 0x7f130d48

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const v1, 0x7f130d47

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    const-string p1, "1"

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string p1, "0"

    .line 52
    .line 53
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->editor:Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    const-string p2, "QPPS1027"

    .line 56
    .line 57
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
