.class public final Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;,
        Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    }
.end annotation


# static fields
.field public static final CUSTOM_LAYER:I = 0x2

.field public static final DEFAULT_ALPHA_LEVEL:F = 1.0f

.field public static final DEFAULT_LAYER:I = 0x1

.field public static final EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final ERROR_BAD_STATE:I = -0x6

.field public static final ERROR_FAILED:I = -0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ALLOWED:I = -0x1

.field public static final ERROR_NOT_READY:I = -0x5

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final TAG:Ljava/lang/String; = "LSO_LockscreenOverlay"

.field public static gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public final mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field public mMiscService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 13
    .line 14
    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static createLSOItem_EmergencyPhone(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 5

    .line 17
    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 18
    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lez v0, :cond_0

    .line 19
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    int-to-float v3, v3

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 20
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    const-string v3, "com.samsung.android.knox.lockscreen.EmergencyPhoneWidget"

    .line 21
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    const-string v3, "epw:phoneNumber"

    .line 22
    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "android:text"

    .line 24
    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android:maxLines"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    .line 27
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "epw:showText"

    .line 28
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    :goto_0
    iget-object v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "android:src"

    .line 30
    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v3, "android:orientation"

    .line 31
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    iget-boolean v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    .line 33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "epw:showBG"

    .line 34
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android:topPos"

    .line 37
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android:bottomPos"

    .line 40
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    .line 43
    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iget v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 45
    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_3

    .line 46
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    iget p1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "android:alpha"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 p1, 0x33

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    return-object p0
.end method

.method public static createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 2
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/16 v2, 0x14

    .line 3
    invoke-static {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(II)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 5
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    const-string v2, "com.samsung.android.knox.lockscreen.EmergencyPhoneWidget"

    .line 6
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    const-string v2, "epw:phoneNumber"

    .line 7
    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android:orientation"

    .line 8
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "epw:showText"

    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 p1, 0x64

    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result p1

    const/16 v2, 0xc8

    .line 11
    invoke-static {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result p0

    .line 12
    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    const/16 p0, 0x33

    .line 13
    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:alpha"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    .line 16
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    return-object v0
.end method

.method public static createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0xc7

    .line 6
    .line 7
    const/16 v3, 0xd1

    .line 8
    .line 9
    const/16 v4, 0xc0

    .line 10
    .line 11
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const v3, 0x1040983

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const v4, 0x1040984

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const v5, 0x1040982

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    new-instance v6, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 37
    .line 38
    invoke-direct {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    .line 42
    .line 43
    const/4 v8, -0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    const/high16 v10, 0x41200000    # 10.0f

    .line 46
    .line 47
    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 51
    .line 52
    .line 53
    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 54
    .line 55
    invoke-direct {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 59
    .line 60
    invoke-direct {v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v12, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 64
    .line 65
    invoke-direct {v12, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/16 v3, 0x11

    .line 69
    .line 70
    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 74
    .line 75
    .line 76
    const/4 v12, -0x2

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    new-instance v13, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 80
    .line 81
    invoke-direct {v13, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13, v8, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x4b

    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "android:maxHeight"

    .line 98
    .line 99
    invoke-virtual {v13, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 103
    .line 104
    .line 105
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 106
    .line 107
    move-object/from16 v1, p1

    .line 108
    .line 109
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 122
    .line 123
    .line 124
    const/4 v13, 0x4

    .line 125
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    const-string v15, "android:maxLines"

    .line 130
    .line 131
    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 135
    .line 136
    .line 137
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 138
    .line 139
    invoke-direct {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v8, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 161
    .line 162
    .line 163
    const/high16 v0, 0x42300000    # 44.0f

    .line 164
    .line 165
    invoke-virtual {v7, v8, v9, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(IIF)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    .line 172
    .line 173
    invoke-direct {v0, v8, v9, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 180
    .line 181
    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v4, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 185
    .line 186
    invoke-direct {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 187
    .line 188
    .line 189
    sget-object v7, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    .line 190
    .line 191
    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    .line 192
    .line 193
    .line 194
    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 195
    .line 196
    invoke-direct {v7, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v9, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    .line 200
    .line 201
    .line 202
    const v5, 0x3f19999a    # 0.6f

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    .line 206
    .line 207
    .line 208
    sget-object v5, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    .line 209
    .line 210
    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 217
    .line 218
    .line 219
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-virtual {v7, v15, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 227
    .line 228
    .line 229
    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 230
    .line 231
    invoke-direct {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v9, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    .line 235
    .line 236
    .line 237
    const/high16 v10, 0x3f800000    # 1.0f

    .line 238
    .line 239
    invoke-virtual {v7, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 243
    .line 244
    .line 245
    new-instance v10, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 246
    .line 247
    invoke-direct {v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v12, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 254
    .line 255
    .line 256
    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 257
    .line 258
    move-object/from16 v13, p3

    .line 259
    .line 260
    invoke-direct {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v11, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    .line 267
    .line 268
    .line 269
    const/4 v13, 0x3

    .line 270
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    invoke-virtual {v11, v15, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 278
    .line 279
    .line 280
    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 281
    .line 282
    move-object/from16 v13, p4

    .line 283
    .line 284
    invoke-direct {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v11, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v11, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    .line 291
    .line 292
    .line 293
    const-string v1, "android:singleLine"

    .line 294
    .line 295
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 296
    .line 297
    invoke-virtual {v11, v1, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v8, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 319
    .line 320
    .line 321
    const/16 v1, 0x30

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    .line 324
    .line 325
    .line 326
    const/high16 v1, 0x41f00000    # 30.0f

    .line 327
    .line 328
    invoke-virtual {v0, v8, v9, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(IIF)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 332
    .line 333
    .line 334
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    .line 335
    .line 336
    const/high16 v1, 0x40c00000    # 6.0f

    .line 337
    .line 338
    invoke-direct {v0, v8, v9, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 342
    .line 343
    .line 344
    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4
    new-instance v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .locals 2

    .line 8
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 12
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-ge v0, p0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x5

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object v2, v1

    .line 37
    :goto_1
    if-nez v2, :cond_3

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-nez p0, :cond_4

    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_4
    new-instance p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;

    .line 48
    .line 49
    const-string v0, ""

    .line 50
    .line 51
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v0, v2, Lcom/samsung/android/knox/lockscreen/LSOItemData;->gravity:I

    .line 55
    .line 56
    iput v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    .line 57
    .line 58
    const-string v0, "epw:phoneNumber"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 71
    .line 72
    :cond_5
    const-string v0, "android:text"

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    .line 85
    .line 86
    :cond_6
    const-string v0, "android:src"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    .line 99
    .line 100
    :cond_7
    const-string v0, "android:topPos"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    .line 117
    .line 118
    :cond_8
    const-string v0, "android:bottomPos"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_9

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    .line 135
    .line 136
    :cond_9
    const-string v0, "epw:showBG"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_a

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput-boolean v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    .line 153
    .line 154
    :cond_a
    const-string v0, "epw:showText"

    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    iput-boolean p0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    .line 171
    .line 172
    :cond_b
    return-object p1
.end method


# virtual methods
.method public final canConfigure()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->canConfigure(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final changeLockScreenString(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.changeLockScreenString"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string p1, "LSO_LockscreenOverlay"

    .line 25
    .line 26
    const-string v0, "Failed changeLockScreenString"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.configure(String, String, String, String)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    const-string v1, "logo"

    invoke-static {v0, p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "LSO_LockscreenOverlay"

    const-string p1, "Failed to copy enterprise logo"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x7d0

    return p0

    .line 9
    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Name and Address cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final configure([Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;)I
    .locals 9

    .line 10
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.configure(LSOImage[])"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 11
    array-length v0, p1

    if-eqz v0, :cond_7

    .line 12
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 13
    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-ltz v2, :cond_6

    aget-object v2, p1, v0

    iget v3, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    const/16 v4, 0x64

    if-gt v3, v4, :cond_6

    iget v2, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v3, v2, :cond_6

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    iget v5, v3, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    iget v3, v3, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v5, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    iget v3, v3, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-gt v5, v3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Invalid argument list - Item[i] top > bottom or Item[i+1] top < Item[i] bottom"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    const/4 v2, -0x1

    .line 17
    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    move v3, v1

    move v5, v3

    .line 18
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_4

    .line 19
    aget-object v6, p1, v3

    iget v6, v6, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-ge v5, v6, :cond_2

    .line 20
    new-instance v6, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    aget-object v7, p1, v3

    iget v7, v7, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    invoke-direct {v6, v2, v1, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    .line 21
    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 22
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    aget-object v6, p1, v3

    iget-object v6, v6, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lso"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string p0, "LSO_LockscreenOverlay"

    const-string p1, "Failed to copy images"

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    .line 24
    :cond_3
    new-instance v6, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v6, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Ljava/lang/String;)V

    .line 25
    aget-object v5, p1, v3

    iget v7, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    iget v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    invoke-virtual {v6, v2, v1, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(IIF)V

    .line 26
    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 28
    aget-object v5, p1, v3

    iget v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-ge v5, v4, :cond_5

    .line 29
    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    sub-int/2addr v4, v5

    int-to-float v3, v4

    invoke-direct {p1, v2, v1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    .line 30
    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result p0

    return p0

    .line 31
    :cond_6
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Invalid argument list - Item[0] top position is less than 0, Item[last_index] is greater than 100, or position of Item[0] > Item[last_index]"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_7
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Invalid argument list - List is empty"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlpha()F
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string v2, "android:alpha"

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    return v0
.end method

.method public final getCurrentLockScreenString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/IMiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "LSO_LockscreenOverlay"

    .line 18
    .line 19
    const-string v1, "Failed getCurrentLockScreenString!!!"

    .line 20
    .line 21
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final getData()Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0

    return-object p0
.end method

.method public final getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0

    return-object p0
.end method

.method public final getEmergencyPhone()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public final getEmergencyPhoneInfo()Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "misc_policy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final isConfigured()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->isConfigured(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final removeEmergencyPhone()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.removeEmergencyPhone"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->resetData(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final resetAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.resetAll"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->resetWallpaper()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final resetData(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final resetOverlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.resetOverlay"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final resetWallpaper()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.resetWallpaper"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetWallpaper()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setAlpha(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.setAlpha"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    cmpg-float v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    cmpl-float v0, p1, v0

    .line 16
    .line 17
    if-gtz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string v1, "android:alpha"

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setPreferences(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 49
    .line 50
    const-string p1, "Alpha values must be in between 0 to 1"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->cleanDataLocalDirectory(Landroid/content/Context;)V

    return v0
.end method

.method public final setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result p0

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    :cond_1
    return p0
.end method

.method public final setEmergencyPhone(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.setEmergencyPhone"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 32
    .line 33
    const-string p1, "Emergency/Support phone cannot be null"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final setEmergencyPhoneInfo(Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.setEmergencyPhoneInfo"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    .line 21
    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    iget v1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    .line 25
    .line 26
    const/16 v2, 0x64

    .line 27
    .line 28
    if-gt v1, v2, :cond_1

    .line 29
    .line 30
    if-le v1, v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-string v2, "epw"

    .line 39
    .line 40
    invoke-static {v1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    const-string p0, "LSO_LockscreenOverlay"

    .line 49
    .line 50
    const-string p1, "Failed to copy icon"

    .line 51
    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const/4 p0, -0x4

    .line 56
    return p0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object p1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x3

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    return p0

    .line 74
    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 75
    .line 76
    const-string p1, "Invalid argument list"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 83
    .line 84
    const-string p1, "Emergency/Support phone cannot be null"

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final setWallpaper(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    const-string v1, "LockscreenOverlay.setWallpaper"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "wp"

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, -0x4

    .line 25
    const-string v1, "LSO_LockscreenOverlay"

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p0, "Failed to copy wallaper"

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return v0

    .line 35
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/high16 v3, 0x10000000

    .line 41
    .line 42
    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    .line 47
    .line 48
    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setWallpaper(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    const-string v0, "Failed to close file descriptor"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->cleanDataLocalDirectory(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    return p1

    .line 69
    :catch_1
    const-string p0, "Error: file not found"

    .line 70
    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return v0

    .line 75
    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 76
    .line 77
    const-string p1, "Wallpaper cannot be null"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method
