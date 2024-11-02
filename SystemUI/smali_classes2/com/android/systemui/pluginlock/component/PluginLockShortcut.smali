.class public final Lcom/android/systemui/pluginlock/component/PluginLockShortcut;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallback:Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

.field public mIsDlsData:Z

.field public final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public mShortcutVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 9
    .line 10
    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockShortcut;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "apply() state:"

    .line 9
    .line 10
    const-string v2, "PluginLockShortcut"

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, -0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const-string p0, "apply() skip!"

    .line 19
    .line 20
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v1, -0x3

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 32
    .line 33
    const/4 p2, -0x1

    .line 34
    if-eq p1, p2, :cond_3

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    const-string p2, "lockscreen_show_shortcut"

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getSettingsInt(ILjava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "apply() curValue: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    .line 61
    .line 62
    .line 63
    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 64
    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "apply() dlsVisible visibility: "

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback(I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    return-void
.end method

.method public final getShortcutState()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutState()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    return v0
.end method

.method public final loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "loadData() mShortcutVisibility: "

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mShortcutVisibility:I

    .line 29
    .line 30
    const-string v0, "PluginLockShortcut"

    .line 31
    .line 32
    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final registerCallback(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "registerCallback() value: "

    .line 2
    .line 3
    .line 4
    const-string v1, "PluginLockShortcut"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 16
    .line 17
    const-string p1, "lockscreen_show_shortcut"

    .line 18
    .line 19
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    filled-new-array {p1}, [Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final setShortcutBackup(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutBackup(I)V

    .line 12
    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, -0x3

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->setShortcutState(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final setShortcutVisibility(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setShortcutVisibility : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "PluginLockShortcut"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string v0, "lockscreen_show_shortcut"

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSystem(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->loadData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->getShortcutState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string/jumbo v1, "update() state: "

    .line 9
    .line 10
    .line 11
    const-string v2, "PluginLockShortcut"

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, -0x2

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mIsDlsData:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string/jumbo p0, "update() skip!"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    const/4 v1, -0x1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_1
    const-string/jumbo p1, "unregisterCallback() "

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    iput-wide v3, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->mCallback:Lcom/android/systemui/pluginlock/component/PluginLockShortcut$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const-string/jumbo p2, "update() visibility: "

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-eq p1, v1, :cond_3

    .line 75
    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->registerCallback(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mInstanceState:Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    .line 89
    .line 90
    if-nez p1, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;->getShortcutBackupValue()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    :goto_1
    move p1, v1

    .line 109
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutVisibility(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setShortcutBackup(I)V

    .line 113
    .line 114
    .line 115
    :goto_3
    return-void
.end method
