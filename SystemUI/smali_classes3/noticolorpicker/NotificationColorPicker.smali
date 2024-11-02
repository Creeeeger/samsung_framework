.class public final Lnoticolorpicker/NotificationColorPicker;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCustomedAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static getSpanned(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const v0, 0x7f0a0aaa

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    check-cast p0, Ljava/lang/CharSequence;

    .line 13
    .line 14
    return-object p0
.end method

.method public static isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomNotification:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomBigNotification:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomHeadsUpNotification:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsCustomPublicNotification:Z

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    :cond_2
    return v0
.end method

.method public static isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {p0}, Lnoticolorpicker/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    :cond_1
    if-eqz p0, :cond_3

    .line 29
    .line 30
    :cond_2
    const/4 p0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 33
    :goto_1
    return p0
.end method

.method public static isUseAppIcon(Landroid/view/View;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const v0, 0x1020006

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    instance-of v0, p0, Lcom/android/internal/widget/CachingIconView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p0, Lcom/android/internal/widget/CachingIconView;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const v0, 0x7f0a0c8c

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CachingIconView;->getTag(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CachingIconView;->getTag(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 40
    :goto_1
    return p0
.end method


# virtual methods
.method public final getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lnoticolorpicker/NotificationColorPicker;->resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 12
    .line 13
    sget-boolean v2, Lcom/android/systemui/NotiRune;->NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    const v5, 0x7f060480

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 32
    .line 33
    const-string v6, "wallpapertheme_state"

    .line 34
    .line 35
    invoke-virtual {v2, v6}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ne v2, v4, :cond_0

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v2, v3

    .line 48
    :goto_0
    if-eqz v2, :cond_4

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget p1, p1, Landroid/app/Notification;->color:I

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isApplyWallpaperThemeToNotif()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    :cond_1
    iget-object p1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 69
    .line 70
    const-string v0, "wallpapertheme_color_isgray"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, v4, :cond_2

    .line 81
    .line 82
    move p1, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move p1, v3

    .line 85
    :goto_1
    if-eqz p1, :cond_3

    .line 86
    .line 87
    const p1, 0x7f060510

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    :goto_2
    move v0, p1

    .line 100
    :cond_4
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const v1, 0x7f05007b

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const v0, 0x7f0604bd

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    :cond_6
    if-eqz v0, :cond_7

    .line 135
    .line 136
    if-ne v0, v4, :cond_8

    .line 137
    .line 138
    :cond_7
    const/4 p1, -0x1

    .line 139
    invoke-static {p0, p1, v3}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    :cond_8
    return v0
.end method

.method public final getGutsTextColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f06044f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2, v2, v1}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const v2, 0x7f05007b

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const v0, 0x7f0605ad

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :cond_1
    return v1
.end method

.method public final getNotificationBgColor$1()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iput v1, p0, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v3, 0xff

    .line 24
    .line 25
    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const v2, 0x7f060481

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, p0, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    .line 54
    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v3, v2, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const v5, 0x7f05007b

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const v1, 0x7f0604ba

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    iput v1, p0, Lnoticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    .line 100
    .line 101
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v3, p0, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    :cond_1
    return v0
.end method

.method public final getNotificationDefaultBgColor()I
    .locals 2

    .line 1
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x7f060461

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getTextColor(IZZ)I
    .locals 6

    .line 1
    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const p1, 0x7f060464

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvertinNightMode(Z)Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvert()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    move p2, v1

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    const v2, 0x7f05007b

    .line 33
    .line 34
    .line 35
    if-eqz p1, :cond_b

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const v4, 0x7f0604bb

    .line 39
    .line 40
    .line 41
    const v5, 0x7f060482

    .line 42
    .line 43
    .line 44
    if-eq p1, v3, :cond_7

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    if-eq p1, v3, :cond_2

    .line 48
    .line 49
    invoke-static {v0, v1, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_2
    if-nez p2, :cond_4

    .line 55
    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const p1, 0x10602dc

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    :goto_0
    const p1, 0x10602db

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :goto_1
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v5, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    :cond_6
    return p1

    .line 107
    :cond_7
    if-eqz p2, :cond_8

    .line 108
    .line 109
    const p1, 0x10602d8

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    goto :goto_2

    .line 117
    :cond_8
    invoke-static {v0, v1, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    :goto_2
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_9

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v5, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_a

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    :cond_a
    return p1

    .line 154
    :cond_b
    if-eqz p2, :cond_c

    .line 155
    .line 156
    const p1, 0x10602d4

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    goto :goto_3

    .line 164
    :cond_c
    invoke-static {v0, v1, p3}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    :goto_3
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    if-eqz p2, :cond_d

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const p2, 0x7f060483

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    :cond_d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_e

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    const p1, 0x7f0604be

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    :cond_e
    return p1
.end method

.method public final isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 6
    .line 7
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final isNeedToInvert()Z
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f05007b

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    move p0, v4

    .line 40
    :goto_1
    if-nez p0, :cond_2

    .line 41
    .line 42
    const p0, 0x3c23d70a    # 0.01f

    .line 43
    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    mul-float/2addr v1, p0

    .line 47
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {v1, p0}, Lcom/android/internal/util/ContrastColorUtil;->shouldInvertTextColor(FZ)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-nez p0, :cond_2

    .line 74
    .line 75
    move v3, v4

    .line 76
    :cond_2
    return v3
.end method

.method public final isNeedToInvertinNightMode(Z)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0x30

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v3

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const v4, 0x7f05007b

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v3

    .line 45
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    int-to-float p0, p0

    .line 76
    const p1, 0x3c23d70a    # 0.01f

    .line 77
    .line 78
    .line 79
    mul-float/2addr p0, p1

    .line 80
    const/high16 p1, 0x3e800000    # 0.25f

    .line 81
    .line 82
    cmpg-float p0, p0, p1

    .line 83
    .line 84
    if-gez p0, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v3, v0

    .line 88
    :goto_2
    return v3
.end method

.method public final isNightModeOn()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 12
    .line 13
    and-int/lit8 p0, p0, 0x30

    .line 14
    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 2

    .line 1
    iget-boolean v0, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p3, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 9
    .line 10
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget p3, p3, Landroid/app/Notification;->color:I

    .line 17
    .line 18
    :goto_0
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    invoke-static {p0, v1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p0, p3, p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    :goto_1
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v1, 0xff

    .line 36
    .line 37
    if-ge v0, v1, :cond_2

    .line 38
    .line 39
    invoke-static {p3, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    :cond_2
    if-eqz p2, :cond_3

    .line 44
    .line 45
    const p1, 0x7f060443

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    xor-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    invoke-static {p0, p3, p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    :cond_3
    return p3
.end method

.method public final resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/app/Notification;->isColorized()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v1, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mBgTint:I

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    .line 31
    .line 32
    invoke-virtual {p0, v3, p1, v2}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v0, v1, p1}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    :goto_1
    return p0
.end method

.method public final setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V
    .locals 6

    .line 1
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f060466

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const v1, 0x7f060467

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    mul-int/lit8 v2, v2, 0x3

    .line 24
    .line 25
    div-int/lit8 v2, v2, 0xa

    .line 26
    .line 27
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    mul-int/lit8 v3, v3, 0x3

    .line 32
    .line 33
    div-int/lit8 v3, v3, 0xa

    .line 34
    .line 35
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    :cond_0
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    const p2, 0x7f081106

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 89
    .line 90
    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 91
    .line 92
    .line 93
    const v1, 0x7f081107

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 101
    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 106
    .line 107
    filled-new-array {p2, p0}, [Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    const v2, 0x7f0709e9

    .line 119
    .line 120
    .line 121
    const v3, 0x7f080cd0

    .line 122
    .line 123
    .line 124
    if-eqz p2, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 187
    .line 188
    .line 189
    :goto_0
    return-void
.end method

.method public final setPrimaryColor(Landroid/widget/TextView;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p2, v0}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    if-nez v8, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lnoticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 11
    .line 12
    .line 13
    move-result v10

    .line 14
    invoke-static/range {p1 .. p1}, Lnoticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v11, 0x0

    .line 19
    if-nez v0, :cond_e

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    if-ge v11, v0, :cond_d

    .line 26
    .line 27
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 32
    .line 33
    if-eqz v2, :cond_c

    .line 34
    .line 35
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v7, v2, v9}, Lnoticolorpicker/NotificationColorPicker;->updateSingleLine(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p1}, Lnoticolorpicker/NotificationColorPicker;->resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-boolean v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsLowPriority:Z

    .line 63
    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 67
    .line 68
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 81
    .line 82
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    instance-of v4, v2, Lcom/android/internal/widget/CallLayout;

    .line 95
    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    :cond_3
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_5

    .line 110
    .line 111
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 116
    .line 117
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 130
    .line 131
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_7

    .line 142
    .line 143
    instance-of v4, v2, Lcom/android/internal/widget/CallLayout;

    .line 144
    .line 145
    if-eqz v4, :cond_7

    .line 146
    .line 147
    :cond_6
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_2
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 151
    .line 152
    if-eqz v2, :cond_a

    .line 153
    .line 154
    invoke-static {v2}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_8

    .line 159
    .line 160
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_8
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 165
    .line 166
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 167
    .line 168
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_9

    .line 177
    .line 178
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 179
    .line 180
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 181
    .line 182
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_a

    .line 191
    .line 192
    instance-of v4, v2, Lcom/android/internal/widget/CallLayout;

    .line 193
    .line 194
    if-eqz v4, :cond_a

    .line 195
    .line 196
    :cond_9
    invoke-virtual {v7, v2, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    .line 197
    .line 198
    .line 199
    :cond_a
    :goto_3
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    const v4, 0x7f0a03da

    .line 204
    .line 205
    .line 206
    if-ne v2, v4, :cond_c

    .line 207
    .line 208
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 209
    .line 210
    if-eqz v1, :cond_c

    .line 211
    .line 212
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 213
    .line 214
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/app/Notification;->isColorized()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_b

    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-virtual {v7, v2, v3, v8}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    :cond_b
    invoke-virtual {v7, v1, v3, v10}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIconForCustom(Landroid/view/View;IZ)V

    .line 239
    .line 240
    .line 241
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_d
    return-void

    .line 246
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 247
    .line 248
    .line 249
    move-result v12

    .line 250
    iget-object v0, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 251
    .line 252
    const v13, 0x1020343

    .line 253
    .line 254
    .line 255
    const/4 v14, 0x1

    .line 256
    const v15, 0x10201fe

    .line 257
    .line 258
    .line 259
    if-eqz v0, :cond_11

    .line 260
    .line 261
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 262
    .line 263
    if-eqz v1, :cond_f

    .line 264
    .line 265
    invoke-virtual {v7, v1, v8, v14}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 266
    .line 267
    .line 268
    :cond_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderExpanded:Landroid/view/NotificationHeaderView;

    .line 269
    .line 270
    if-eqz v1, :cond_10

    .line 271
    .line 272
    invoke-virtual {v7, v1, v8, v11}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 273
    .line 274
    .line 275
    :cond_10
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 276
    .line 277
    if-eqz v1, :cond_11

    .line 278
    .line 279
    invoke-virtual {v7, v1, v8, v14}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 283
    .line 284
    invoke-virtual {v1, v13}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Landroid/widget/TextView;

    .line 289
    .line 290
    invoke-virtual {v7, v1, v9}, Lnoticolorpicker/NotificationColorPicker;->setPrimaryColor(Landroid/widget/TextView;Z)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    .line 294
    .line 295
    invoke-virtual {v0, v15}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-virtual {v7, v0, v9}, Lnoticolorpicker/NotificationColorPicker;->setPrimaryColor(Landroid/widget/TextView;Z)V

    .line 302
    .line 303
    .line 304
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    move v5, v11

    .line 309
    :goto_4
    if-ge v5, v6, :cond_19

    .line 310
    .line 311
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 316
    .line 317
    if-eqz v1, :cond_17

    .line 318
    .line 319
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 320
    .line 321
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 322
    .line 323
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 324
    .line 325
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 326
    .line 327
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 328
    .line 329
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 334
    .line 335
    .line 336
    move-result-object v16

    .line 337
    const/4 v11, 0x2

    .line 338
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    instance-of v0, v13, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    .line 343
    .line 344
    if-nez v0, :cond_13

    .line 345
    .line 346
    instance-of v0, v13, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    .line 347
    .line 348
    if-eqz v0, :cond_12

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_12
    const/4 v0, 0x0

    .line 352
    goto :goto_6

    .line 353
    :cond_13
    :goto_5
    move v0, v14

    .line 354
    :goto_6
    if-eqz v0, :cond_14

    .line 355
    .line 356
    move-object/from16 v0, p0

    .line 357
    .line 358
    move-object/from16 v17, v1

    .line 359
    .line 360
    move-object v1, v4

    .line 361
    move-object/from16 v18, v2

    .line 362
    .line 363
    move v2, v12

    .line 364
    move-object v14, v3

    .line 365
    move v3, v10

    .line 366
    move-object/from16 v19, v4

    .line 367
    .line 368
    move-object v4, v13

    .line 369
    move v13, v5

    .line 370
    move/from16 v5, p2

    .line 371
    .line 372
    move/from16 v20, v6

    .line 373
    .line 374
    move-object/from16 v6, p1

    .line 375
    .line 376
    invoke-virtual/range {v0 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 377
    .line 378
    .line 379
    goto :goto_7

    .line 380
    :cond_14
    move-object/from16 v17, v1

    .line 381
    .line 382
    move-object/from16 v18, v2

    .line 383
    .line 384
    move-object v14, v3

    .line 385
    move-object/from16 v19, v4

    .line 386
    .line 387
    move v13, v5

    .line 388
    move/from16 v20, v6

    .line 389
    .line 390
    move-object/from16 v0, p0

    .line 391
    .line 392
    move-object/from16 v1, v19

    .line 393
    .line 394
    move v2, v12

    .line 395
    move v3, v10

    .line 396
    move/from16 v4, p2

    .line 397
    .line 398
    move-object/from16 v5, p1

    .line 399
    .line 400
    invoke-virtual/range {v0 .. v5}, Lnoticolorpicker/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 401
    .line 402
    .line 403
    :goto_7
    move-object/from16 v0, p0

    .line 404
    .line 405
    move-object/from16 v1, v18

    .line 406
    .line 407
    move v2, v12

    .line 408
    move v3, v10

    .line 409
    move-object/from16 v4, v16

    .line 410
    .line 411
    move/from16 v5, p2

    .line 412
    .line 413
    move-object/from16 v6, p1

    .line 414
    .line 415
    invoke-virtual/range {v0 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 416
    .line 417
    .line 418
    move-object/from16 v1, v17

    .line 419
    .line 420
    move-object v4, v11

    .line 421
    invoke-virtual/range {v0 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7, v14, v9}, Lnoticolorpicker/NotificationColorPicker;->updateSingleLine(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Z)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v0, v19

    .line 428
    .line 429
    if-eqz v0, :cond_16

    .line 430
    .line 431
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    check-cast v1, Landroid/widget/TextView;

    .line 436
    .line 437
    const/4 v2, 0x0

    .line 438
    const/4 v3, 0x1

    .line 439
    if-eqz v1, :cond_15

    .line 440
    .line 441
    invoke-virtual {v7, v2, v9, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    .line 447
    .line 448
    :cond_15
    const v1, 0x1020343

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Landroid/widget/TextView;

    .line 456
    .line 457
    if-eqz v0, :cond_18

    .line 458
    .line 459
    invoke-virtual {v7, v0, v9}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7, v2, v9, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_16
    const v1, 0x1020343

    .line 471
    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    const/4 v3, 0x1

    .line 475
    goto :goto_8

    .line 476
    :cond_17
    move/from16 v20, v6

    .line 477
    .line 478
    move v2, v11

    .line 479
    move v1, v13

    .line 480
    move v3, v14

    .line 481
    move v13, v5

    .line 482
    :cond_18
    :goto_8
    add-int/lit8 v5, v13, 0x1

    .line 483
    .line 484
    move v13, v1

    .line 485
    move v11, v2

    .line 486
    move v14, v3

    .line 487
    move/from16 v6, v20

    .line 488
    .line 489
    goto/16 :goto_4

    .line 490
    .line 491
    :cond_19
    return-void
.end method

.method public final updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const v6, 0x7f0a0a83

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    instance-of v7, v6, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 24
    .line 25
    if-eqz v7, :cond_1

    .line 26
    .line 27
    check-cast v6, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 28
    .line 29
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->updateButtonColorOnUiModeChanged()V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    invoke-virtual {v0, v6, v4, v7}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual {v0, v7, v4, v7}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    instance-of v10, v1, Lcom/android/internal/widget/IMessagingLayout;

    .line 43
    .line 44
    if-eqz v10, :cond_2

    .line 45
    .line 46
    move-object v10, v1

    .line 47
    check-cast v10, Lcom/android/internal/widget/IMessagingLayout;

    .line 48
    .line 49
    invoke-interface {v10}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    invoke-virtual {v11}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    new-instance v12, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    invoke-direct {v12}, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda0;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    new-instance v12, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    invoke-direct {v12, v8, v9, v3, v2}, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;-><init>(IIZI)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 72
    .line 73
    .line 74
    instance-of v11, v10, Lcom/android/internal/widget/ConversationLayout;

    .line 75
    .line 76
    if-eqz v11, :cond_2

    .line 77
    .line 78
    check-cast v10, Lcom/android/internal/widget/ConversationLayout;

    .line 79
    .line 80
    invoke-virtual {v10, v8}, Lcom/android/internal/widget/ConversationLayout;->setSenderTextColor(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v8, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    const v10, 0x7f060461

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-virtual {v0, v11, v12, v5}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 97
    .line 98
    .line 99
    instance-of v12, v1, Lcom/android/internal/widget/ConversationLayout;

    .line 100
    .line 101
    if-eqz v12, :cond_8

    .line 102
    .line 103
    move-object v12, v1

    .line 104
    check-cast v12, Lcom/android/internal/widget/ConversationLayout;

    .line 105
    .line 106
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/ConversationLayout;->setLayoutColor(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v2}, Lcom/android/internal/widget/ConversationLayout;->setNotificationBackgroundColor(I)V

    .line 110
    .line 111
    .line 112
    const v11, 0x1020006

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    check-cast v11, Landroid/widget/ImageView;

    .line 120
    .line 121
    if-eqz v11, :cond_4

    .line 122
    .line 123
    invoke-static {v11}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    const v14, 0x1020293

    .line 128
    .line 129
    .line 130
    if-eqz v13, :cond_3

    .line 131
    .line 132
    invoke-virtual {v12, v14}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const/16 v14, 0x8

    .line 137
    .line 138
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 146
    .line 147
    invoke-virtual {v13, v6, v6, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {v12, v14}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    .line 167
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    const v15, 0x7f070a36

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    invoke-virtual {v13, v14, v14, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    const v13, 0x7f060443

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v13}, Landroid/content/Context;->getColor(I)I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 192
    .line 193
    invoke-virtual {v11, v13, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    :goto_0
    const v11, 0x1020294

    .line 197
    .line 198
    .line 199
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    check-cast v11, Landroid/widget/ImageView;

    .line 204
    .line 205
    if-eqz v11, :cond_6

    .line 206
    .line 207
    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    if-nez v13, :cond_6

    .line 212
    .line 213
    const v13, 0x106020a

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v13}, Landroid/content/Context;->getColor(I)I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    invoke-static {v12}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    if-eqz v14, :cond_5

    .line 225
    .line 226
    const v14, 0x7f081108

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    .line 232
    move-result-object v14

    .line 233
    check-cast v14, Landroid/graphics/drawable/VectorDrawable;

    .line 234
    .line 235
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_5
    const/4 v14, 0x0

    .line 243
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 244
    .line 245
    .line 246
    const v14, 0x1080292

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    check-cast v11, Landroid/graphics/drawable/GradientDrawable;

    .line 265
    .line 266
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    const v15, 0x7f0703e7

    .line 271
    .line 272
    .line 273
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    invoke-virtual {v11, v14, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 278
    .line 279
    .line 280
    :cond_6
    :goto_1
    invoke-virtual {v12}, Lcom/android/internal/widget/ConversationLayout;->getParent()Landroid/view/ViewParent;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    if-eqz v11, :cond_9

    .line 285
    .line 286
    instance-of v13, v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 287
    .line 288
    if-eqz v13, :cond_9

    .line 289
    .line 290
    check-cast v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 291
    .line 292
    move v13, v6

    .line 293
    :goto_2
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    if-ge v13, v14, :cond_9

    .line 298
    .line 299
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    instance-of v14, v14, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;

    .line 304
    .line 305
    if-eqz v14, :cond_7

    .line 306
    .line 307
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    check-cast v14, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;

    .line 312
    .line 313
    const v15, 0x1020291

    .line 314
    .line 315
    .line 316
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    check-cast v15, Landroid/widget/ImageView;

    .line 321
    .line 322
    invoke-virtual {v12}, Lcom/android/internal/widget/ConversationLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 327
    .line 328
    .line 329
    const v6, 0x7f0a02d0

    .line 330
    .line 331
    .line 332
    invoke-virtual {v14, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    check-cast v6, Landroid/widget/TextView;

    .line 337
    .line 338
    if-eqz v6, :cond_7

    .line 339
    .line 340
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    .line 342
    .line 343
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 344
    .line 345
    const/4 v6, 0x0

    .line 346
    goto :goto_2

    .line 347
    :cond_8
    instance-of v6, v1, Lcom/android/internal/widget/MessagingLayout;

    .line 348
    .line 349
    if-eqz v6, :cond_9

    .line 350
    .line 351
    move-object v6, v1

    .line 352
    check-cast v6, Lcom/android/internal/widget/MessagingLayout;

    .line 353
    .line 354
    invoke-virtual {v6, v11}, Lcom/android/internal/widget/MessagingLayout;->setLayoutColor(I)V

    .line 355
    .line 356
    .line 357
    :cond_9
    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    invoke-virtual/range {p0 .. p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    invoke-virtual {v0, v6, v9, v5}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    instance-of v9, v1, Lcom/android/internal/widget/CallLayout;

    .line 370
    .line 371
    if-eqz v9, :cond_a

    .line 372
    .line 373
    move-object v9, v1

    .line 374
    check-cast v9, Lcom/android/internal/widget/CallLayout;

    .line 375
    .line 376
    invoke-virtual {v9, v6}, Lcom/android/internal/widget/CallLayout;->setLayoutColor(I)V

    .line 377
    .line 378
    .line 379
    if-eqz v3, :cond_a

    .line 380
    .line 381
    invoke-virtual {v9, v2}, Lcom/android/internal/widget/CallLayout;->setNotificationBackgroundColor(I)V

    .line 382
    .line 383
    .line 384
    :cond_a
    invoke-virtual {v0, v1, v4}, Lnoticolorpicker/NotificationColorPicker;->updateMediaActions(Landroid/view/View;Z)V

    .line 385
    .line 386
    .line 387
    const v2, 0x102000d

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    instance-of v3, v2, Landroid/widget/ProgressBar;

    .line 395
    .line 396
    if-eqz v3, :cond_d

    .line 397
    .line 398
    check-cast v2, Landroid/widget/ProgressBar;

    .line 399
    .line 400
    const v3, 0x7f06046b

    .line 401
    .line 402
    .line 403
    invoke-virtual {v8, v3}, Landroid/content/Context;->getColor(I)I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    const v6, 0x7f06046a

    .line 412
    .line 413
    .line 414
    invoke-virtual {v8, v6}, Landroid/content/Context;->getColor(I)I

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    if-nez v9, :cond_b

    .line 427
    .line 428
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    const v9, 0x7f05007b

    .line 433
    .line 434
    .line 435
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    if-eqz v8, :cond_c

    .line 440
    .line 441
    :cond_b
    const/4 v3, 0x0

    .line 442
    invoke-virtual {v0, v3, v4, v7}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    const/4 v6, 0x2

    .line 451
    invoke-virtual {v0, v6, v4, v7}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    :cond_c
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 466
    .line 467
    .line 468
    :cond_d
    invoke-virtual {v0, v1, v5, v7}, Lnoticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    .line 469
    .line 470
    .line 471
    const v2, 0x1020016

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    check-cast v2, Landroid/widget/TextView;

    .line 479
    .line 480
    if-eqz v2, :cond_e

    .line 481
    .line 482
    invoke-virtual {v0, v2, v4}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 483
    .line 484
    .line 485
    const/4 v3, 0x0

    .line 486
    invoke-virtual {v0, v3, v4, v7}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    .line 492
    .line 493
    :cond_e
    const v2, 0x1020621

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    check-cast v1, Landroid/widget/TextView;

    .line 501
    .line 502
    if-eqz v1, :cond_f

    .line 503
    .line 504
    invoke-virtual {v0, v1, v4}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v7, v4, v7}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    .line 513
    .line 514
    :cond_f
    return-void
.end method

.method public final updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object v2, p1

    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const v0, 0x10201cf

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v3, :cond_6

    .line 21
    .line 22
    const v0, 0x10201ce

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v7, v0

    .line 30
    check-cast v7, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    iget-object v8, v1, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    if-eqz v7, :cond_5

    .line 35
    .line 36
    const v0, 0x10806cd

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-nez v9, :cond_1

    .line 48
    .line 49
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const v10, 0x7f05007b

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_2

    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const/16 v12, 0x3f

    .line 79
    .line 80
    invoke-static {v12, v10, v11, v9}, Landroid/graphics/Color;->argb(IIII)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 85
    .line 86
    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    move v10, v6

    .line 97
    :goto_0
    if-ge v10, v9, :cond_5

    .line 98
    .line 99
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v11, v0

    .line 104
    check-cast v11, Landroid/widget/Button;

    .line 105
    .line 106
    :try_start_0
    move-object v0, v7

    .line 107
    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->isEmphasizedMode()Z

    .line 110
    .line 111
    .line 112
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v12, "NotificationColorPicker"

    .line 116
    .line 117
    const-string v13, "Failed to check emphasized mode."

    .line 118
    .line 119
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .line 124
    .line 125
    move v0, v6

    .line 126
    :goto_1
    if-eqz v0, :cond_3

    .line 127
    .line 128
    const/4 v0, -0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {p0, v6, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    :goto_2
    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    invoke-virtual {v11}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 150
    .line 151
    const v11, 0x10602cd

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v11}, Landroid/content/Context;->getColor(I)I

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    const v0, 0x1020232

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/widget/ImageView;

    .line 176
    .line 177
    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 186
    .line 187
    .line 188
    const v7, 0x10806cf

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    .line 197
    .line 198
    const v0, 0x10205d4

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Landroid/widget/ImageView;

    .line 206
    .line 207
    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    invoke-virtual {p0, p1, v5}, Lnoticolorpicker/NotificationColorPicker;->updateMediaActions(Landroid/view/View;Z)V

    .line 226
    .line 227
    .line 228
    const v0, 0x7f0a0a83

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    instance-of v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 236
    .line 237
    if-eqz v3, :cond_7

    .line 238
    .line 239
    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->updateButtonColorOnUiModeChanged()V

    .line 242
    .line 243
    .line 244
    :cond_7
    move-object/from16 v3, p4

    .line 245
    .line 246
    instance-of v0, v3, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    .line 247
    .line 248
    if-eqz v0, :cond_8

    .line 249
    .line 250
    const v0, 0x102022a

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v0, :cond_8

    .line 260
    .line 261
    invoke-virtual {p0, v0, v5}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    :cond_8
    :goto_3
    const/4 v0, 0x7

    .line 272
    if-ge v6, v0, :cond_a

    .line 273
    .line 274
    sget-object v0, Lnoticolorpicker/NotificationColorSet;->INBOX_ROWS:[I

    .line 275
    .line 276
    aget v0, v0, v6

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Landroid/widget/TextView;

    .line 283
    .line 284
    if-eqz v0, :cond_9

    .line 285
    .line 286
    invoke-virtual {p0, v0, v5}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v4, v5, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    .line 295
    .line 296
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_a
    move-object v1, p0

    .line 300
    move-object v2, p1

    .line 301
    move/from16 v3, p2

    .line 302
    .line 303
    move/from16 v4, p3

    .line 304
    .line 305
    move/from16 v5, p5

    .line 306
    .line 307
    move-object/from16 v6, p6

    .line 308
    .line 309
    invoke-virtual/range {v1 .. v6}, Lnoticolorpicker/NotificationColorPicker;->updateBase(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 310
    .line 311
    .line 312
    return-void
.end method

.method public final updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    if-eqz v1, :cond_1f

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, v2}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v0, v2}, Lnoticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDimmed:Z

    .line 24
    .line 25
    const v7, 0x1020006

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Landroid/widget/ImageView;

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const v10, 0x7f080cd0

    .line 36
    .line 37
    .line 38
    const-class v11, Lcom/android/systemui/util/SettingsHelper;

    .line 39
    .line 40
    iget-object v12, v0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    if-eqz v7, :cond_5

    .line 43
    .line 44
    invoke-static {v7}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    if-eqz v13, :cond_1

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object v14

    .line 54
    if-eqz v14, :cond_6

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    if-eqz v5, :cond_4

    .line 64
    .line 65
    const v14, 0x7f060443

    .line 66
    .line 67
    .line 68
    invoke-virtual {v12, v14}, Landroid/content/Context;->getColor(I)I

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    const v8, 0x7f05007b

    .line 77
    .line 78
    .line 79
    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    const/16 v9, 0xff

    .line 98
    .line 99
    invoke-static {v9, v8, v15, v14}, Landroid/graphics/Color;->argb(IIII)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 104
    .line 105
    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 110
    .line 111
    invoke-virtual {v7, v14, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-eqz v8, :cond_6

    .line 119
    .line 120
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    .line 125
    .line 126
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_3

    .line 131
    .line 132
    invoke-virtual {v12, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 144
    .line 145
    invoke-virtual {v8, v4, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    if-eqz v8, :cond_6

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    invoke-virtual {v0, v7, v8}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    const/4 v13, 0x0

    .line 161
    :cond_6
    :goto_1
    const v8, 0x1020338

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    check-cast v8, Landroid/widget/ImageView;

    .line 169
    .line 170
    const/16 v9, 0xa

    .line 171
    .line 172
    const/4 v14, 0x3

    .line 173
    const/4 v15, 0x1

    .line 174
    if-eqz v8, :cond_a

    .line 175
    .line 176
    if-eqz v13, :cond_7

    .line 177
    .line 178
    const/4 v13, 0x0

    .line 179
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const/16 v7, 0x4c

    .line 199
    .line 200
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_7
    const/4 v13, 0x0

    .line 208
    if-eqz v5, :cond_9

    .line 209
    .line 210
    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Lcom/android/systemui/util/SettingsHelper;

    .line 215
    .line 216
    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_8

    .line 221
    .line 222
    invoke-virtual {v12, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    .line 228
    .line 229
    :cond_8
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    mul-int/2addr v5, v14

    .line 234
    div-int/2addr v5, v9

    .line 235
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    invoke-static {v5, v7, v10, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 252
    .line 253
    invoke-virtual {v8, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_9
    invoke-virtual {v0, v8, v15}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_a
    const/4 v13, 0x0

    .line 262
    :goto_2
    const v4, 0x10204fd

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Landroid/widget/ImageView;

    .line 270
    .line 271
    const/4 v5, 0x2

    .line 272
    if-eqz v4, :cond_b

    .line 273
    .line 274
    const/16 v7, 0x14

    .line 275
    .line 276
    new-array v7, v7, [F

    .line 277
    .line 278
    const/high16 v8, 0x3f800000    # 1.0f

    .line 279
    .line 280
    const/4 v10, 0x0

    .line 281
    aput v8, v7, v10

    .line 282
    .line 283
    const/4 v10, 0x0

    .line 284
    aput v10, v7, v15

    .line 285
    .line 286
    aput v10, v7, v5

    .line 287
    .line 288
    aput v10, v7, v14

    .line 289
    .line 290
    const/16 v11, -0x14

    .line 291
    .line 292
    int-to-float v11, v11

    .line 293
    const/4 v14, 0x4

    .line 294
    aput v11, v7, v14

    .line 295
    .line 296
    const/4 v14, 0x5

    .line 297
    aput v10, v7, v14

    .line 298
    .line 299
    const/4 v14, 0x6

    .line 300
    aput v8, v7, v14

    .line 301
    .line 302
    const/4 v14, 0x7

    .line 303
    aput v10, v7, v14

    .line 304
    .line 305
    const/16 v14, 0x8

    .line 306
    .line 307
    aput v10, v7, v14

    .line 308
    .line 309
    const/16 v14, 0x9

    .line 310
    .line 311
    aput v11, v7, v14

    .line 312
    .line 313
    aput v10, v7, v9

    .line 314
    .line 315
    const/16 v9, 0xb

    .line 316
    .line 317
    aput v10, v7, v9

    .line 318
    .line 319
    const/16 v9, 0xc

    .line 320
    .line 321
    aput v8, v7, v9

    .line 322
    .line 323
    const/16 v9, 0xd

    .line 324
    .line 325
    aput v10, v7, v9

    .line 326
    .line 327
    const/16 v9, 0xe

    .line 328
    .line 329
    aput v11, v7, v9

    .line 330
    .line 331
    const/16 v9, 0xf

    .line 332
    .line 333
    aput v10, v7, v9

    .line 334
    .line 335
    const/16 v9, 0x10

    .line 336
    .line 337
    aput v10, v7, v9

    .line 338
    .line 339
    const/16 v9, 0x11

    .line 340
    .line 341
    aput v10, v7, v9

    .line 342
    .line 343
    const/16 v9, 0x12

    .line 344
    .line 345
    aput v8, v7, v9

    .line 346
    .line 347
    const/16 v8, 0x13

    .line 348
    .line 349
    aput v11, v7, v8

    .line 350
    .line 351
    new-instance v8, Landroid/graphics/ColorMatrixColorFilter;

    .line 352
    .line 353
    invoke-direct {v8, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 357
    .line 358
    .line 359
    :cond_b
    const v4, 0x10202d9

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    check-cast v4, Lcom/android/internal/widget/NotificationExpandButton;

    .line 367
    .line 368
    if-eqz v4, :cond_c

    .line 369
    .line 370
    if-eqz v3, :cond_c

    .line 371
    .line 372
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    const/16 v10, 0xb2

    .line 389
    .line 390
    invoke-static {v10, v8, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/NotificationExpandButton;->setDefaultTextColor(I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/NotificationExpandButton;->setHighlightTextColor(I)V

    .line 402
    .line 403
    .line 404
    :cond_c
    const v4, 0x10201fe

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Landroid/widget/TextView;

    .line 412
    .line 413
    if-eqz v4, :cond_d

    .line 414
    .line 415
    invoke-virtual {v0, v4, v6}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    .line 424
    .line 425
    :cond_d
    const v4, 0x1020346

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    check-cast v4, Landroid/widget/TextView;

    .line 433
    .line 434
    if-eqz v4, :cond_e

    .line 435
    .line 436
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    .line 442
    .line 443
    :cond_e
    const v4, 0x1020345

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    check-cast v4, Landroid/widget/TextView;

    .line 451
    .line 452
    if-eqz v4, :cond_f

    .line 453
    .line 454
    invoke-virtual {v0, v4, v6}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    .line 463
    .line 464
    :cond_f
    const v4, 0x1020344

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    check-cast v4, Landroid/widget/TextView;

    .line 472
    .line 473
    if-eqz v4, :cond_10

    .line 474
    .line 475
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 476
    .line 477
    .line 478
    move-result v7

    .line 479
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    .line 481
    .line 482
    :cond_10
    const v4, 0x1020343

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    check-cast v4, Landroid/widget/TextView;

    .line 490
    .line 491
    if-eqz v4, :cond_11

    .line 492
    .line 493
    invoke-virtual {v0, v4, v6}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    .line 502
    .line 503
    :cond_11
    const v4, 0x1020647

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    check-cast v4, Landroid/widget/TextView;

    .line 511
    .line 512
    if-eqz v4, :cond_12

    .line 513
    .line 514
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 519
    .line 520
    .line 521
    :cond_12
    const v4, 0x1020643

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    check-cast v4, Landroid/widget/DateTimeView;

    .line 529
    .line 530
    if-eqz v4, :cond_13

    .line 531
    .line 532
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    invoke-virtual {v4, v5}, Landroid/widget/DateTimeView;->setTextColor(I)V

    .line 537
    .line 538
    .line 539
    :cond_13
    const v5, 0x1020260

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    instance-of v7, v5, Landroid/widget/Chronometer;

    .line 547
    .line 548
    if-eqz v7, :cond_14

    .line 549
    .line 550
    check-cast v5, Landroid/widget/Chronometer;

    .line 551
    .line 552
    if-eqz v4, :cond_14

    .line 553
    .line 554
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    invoke-virtual {v5, v4}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 559
    .line 560
    .line 561
    :cond_14
    const v4, 0x1020297

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    check-cast v4, Landroid/widget/TextView;

    .line 569
    .line 570
    if-eqz v4, :cond_15

    .line 571
    .line 572
    invoke-virtual {v0, v4, v6}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 573
    .line 574
    .line 575
    const/4 v5, 0x0

    .line 576
    invoke-virtual {v0, v5, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    .line 582
    .line 583
    :cond_15
    const v4, 0x10201fd

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    check-cast v4, Landroid/widget/TextView;

    .line 591
    .line 592
    if-eqz v4, :cond_16

    .line 593
    .line 594
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 595
    .line 596
    .line 597
    move-result v5

    .line 598
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    .line 600
    .line 601
    :cond_16
    const v4, 0x10206a2

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    check-cast v4, Landroid/widget/TextView;

    .line 609
    .line 610
    if-eqz v4, :cond_17

    .line 611
    .line 612
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 617
    .line 618
    .line 619
    :cond_17
    const v4, 0x10206a4

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    check-cast v4, Landroid/widget/TextView;

    .line 627
    .line 628
    if-eqz v4, :cond_18

    .line 629
    .line 630
    invoke-virtual {v0, v4, v6}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    .line 639
    .line 640
    :cond_18
    const v4, 0x10206a3

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    check-cast v4, Landroid/widget/ImageView;

    .line 648
    .line 649
    if-eqz v4, :cond_19

    .line 650
    .line 651
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 656
    .line 657
    invoke-virtual {v4, v5, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 658
    .line 659
    .line 660
    :cond_19
    const v4, 0x10204bd

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    check-cast v4, Landroid/widget/ImageView;

    .line 668
    .line 669
    if-eqz v4, :cond_1c

    .line 670
    .line 671
    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 672
    .line 673
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 674
    .line 675
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 680
    .line 681
    .line 682
    move-result v5

    .line 683
    if-nez v5, :cond_1a

    .line 684
    .line 685
    move-object v8, v13

    .line 686
    goto :goto_4

    .line 687
    :cond_1a
    const-class v5, Landroid/app/admin/DevicePolicyManager;

    .line 688
    .line 689
    invoke-virtual {v12, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 694
    .line 695
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 700
    .line 701
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 702
    .line 703
    invoke-virtual {v7, v12}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    .line 704
    .line 705
    .line 706
    move-result-object v7

    .line 707
    const-class v8, Landroid/os/UserManager;

    .line 708
    .line 709
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v7

    .line 713
    check-cast v7, Landroid/os/UserManager;

    .line 714
    .line 715
    invoke-virtual {v7}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    if-eqz v7, :cond_1b

    .line 720
    .line 721
    const-string v7, "WORK_PROFILE_ICON"

    .line 722
    .line 723
    goto :goto_3

    .line 724
    :cond_1b
    const-string v7, "UNDEFINED"

    .line 725
    .line 726
    :goto_3
    new-instance v8, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;

    .line 727
    .line 728
    invoke-direct {v8, v0, v2}, Lnoticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;-><init>(Lnoticolorpicker/NotificationColorPicker;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 729
    .line 730
    .line 731
    const-string v2, "SOLID_COLORED"

    .line 732
    .line 733
    const-string v9, "NOTIFICATION"

    .line 734
    .line 735
    invoke-virtual {v5, v7, v2, v9, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    :goto_4
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    .line 741
    .line 742
    :cond_1c
    const v2, 0x102049a

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    check-cast v2, Landroid/widget/ImageView;

    .line 750
    .line 751
    if-eqz v2, :cond_1d

    .line 752
    .line 753
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 758
    .line 759
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 760
    .line 761
    .line 762
    :cond_1d
    const v2, 0x10201e2

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    check-cast v2, Landroid/widget/ImageView;

    .line 770
    .line 771
    if-eqz v2, :cond_1e

    .line 772
    .line 773
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 774
    .line 775
    .line 776
    move-result v4

    .line 777
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 778
    .line 779
    invoke-virtual {v2, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 780
    .line 781
    .line 782
    :cond_1e
    const v2, 0x10202ea

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    check-cast v1, Landroid/widget/ImageButton;

    .line 790
    .line 791
    if-eqz v1, :cond_1f

    .line 792
    .line 793
    invoke-virtual {v0, v15, v6, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 798
    .line 799
    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 800
    .line 801
    .line 802
    :cond_1f
    :goto_5
    return-void
.end method

.method public final updateIconTag(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    if-eqz p2, :cond_6

    .line 6
    .line 7
    const v1, 0x1020006

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    .line 15
    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    sget-object v2, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 19
    .line 20
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f0a04be

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const v5, 0x402080

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-string v6, "android"

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x1

    .line 79
    if-nez v6, :cond_0

    .line 80
    .line 81
    const-string v6, "com.android.systemui"

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_0

    .line 88
    .line 89
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 90
    .line 91
    if-eqz v6, :cond_0

    .line 92
    .line 93
    move v6, v8

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    move v6, v7

    .line 96
    :goto_0
    if-eqz v6, :cond_4

    .line 97
    .line 98
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    .line 108
    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 112
    .line 113
    const-string p1, "colortheme_app_icon"

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-ne p0, v8, :cond_1

    .line 124
    .line 125
    move p0, v8

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    move p0, v7

    .line 128
    :goto_1
    if-eqz p0, :cond_3

    .line 129
    .line 130
    const-class p0, Landroid/content/pm/LauncherApps;

    .line 131
    .line 132
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 137
    .line 138
    iget p1, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 139
    .line 140
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, v4, p1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_2

    .line 153
    .line 154
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {v3, v5, v8}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    :goto_2
    const/4 p1, 0x0

    .line 185
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/CachingIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/CachingIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/internal/widget/CachingIconView;->setPadding(IIII)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p0}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    .line 196
    .line 197
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 198
    .line 199
    const p1, 0x7f0a0c8c

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1, p0}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_4
    invoke-virtual {p0, p1, p2, v1}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    invoke-virtual {p0, p1, p2, v1}, Lnoticolorpicker/NotificationColorPicker;->updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V

    .line 216
    .line 217
    .line 218
    :cond_6
    :goto_3
    return-void
.end method

.method public final updateMediaActions(Landroid/view/View;Z)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const v0, 0x10203f6

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v2, v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-virtual {p0, v1, p2, v4}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 37
    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method public final updateSingleLine(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const v0, 0x7f0a0778

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0, p2}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v2, p2, v1}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const v0, 0x7f0a0777

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lnoticolorpicker/NotificationColorPicker;->updateSpanned(Landroid/widget/TextView;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, p2, v1}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final updateSmallIcon(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/internal/widget/CachingIconView;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/internal/widget/ConversationLayout;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    instance-of p1, p1, Lcom/android/internal/widget/CallLayout;

    .line 6
    .line 7
    if-nez p1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f0709ea

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p3, p1, p1, p1, p1}, Lcom/android/internal/widget/CachingIconView;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const v0, 0x7f080cd0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/CachingIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationDefaultBgColor()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    invoke-virtual {p0, p1, v0, p2}, Lnoticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    :goto_0
    invoke-virtual {p3}, Lcom/android/internal/widget/CachingIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 118
    .line 119
    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p3, p1}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p3, p0}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_1
    const p0, 0x7f0a0c8c

    .line 144
    .line 145
    .line 146
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {p3, p0, p1}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final updateSmallIconForCustom(Landroid/view/View;IZ)V
    .locals 1

    .line 1
    const v0, 0x1020006

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-static {p1}, Lnoticolorpicker/NotificationColorPicker;->isUseAppIcon(Landroid/view/View;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-eqz p3, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const p3, 0x7f060444

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 44
    .line 45
    invoke-virtual {p1, p3, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    if-eqz p3, :cond_3

    .line 53
    .line 54
    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    .line 55
    .line 56
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    if-nez p3, :cond_1

    .line 67
    .line 68
    const p3, 0x7f080cd0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 83
    .line 84
    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-virtual {p0, p1, p2}, Lnoticolorpicker/NotificationColorPicker;->setNonGrayScaleIconBackground(Landroid/widget/ImageView;Z)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    return-void
.end method

.method public final updateSpanned(Landroid/widget/TextView;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    instance-of v1, v0, Landroid/text/Spanned;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-eqz v1, :cond_9

    .line 15
    .line 16
    invoke-static {p1}, Lnoticolorpicker/NotificationColorPicker;->getSpanned(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p1}, Lnoticolorpicker/NotificationColorPicker;->getSpanned(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {p1}, Lnoticolorpicker/NotificationColorPicker;->getSpanned(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    :cond_2
    const v1, 0x7f0a0aaa

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Lnoticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_8

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const v2, 0x7f05007b

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    if-eqz p2, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvert()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_6

    .line 91
    .line 92
    :cond_5
    invoke-virtual {p0, p2}, Lnoticolorpicker/NotificationColorPicker;->isNeedToInvertinNightMode(Z)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_7

    .line 97
    .line 98
    :cond_6
    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_7
    invoke-static {p1}, Lnoticolorpicker/NotificationColorPicker;->getSpanned(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_8
    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    :goto_3
    return-void
.end method
