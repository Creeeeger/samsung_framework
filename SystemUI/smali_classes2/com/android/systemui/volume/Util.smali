.class public final Lcom/android/systemui/volume/Util;
.super Lcom/android/settingslib/volume/Util;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SAMSUNG_AUDIO_MANAGER_FLAGS:[I

.field public static final SAMSUNG_AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/volume/Util;->SAMSUNG_AUDIO_MANAGER_FLAGS:[I

    .line 9
    .line 10
    const-string v1, "SHOW_UI"

    .line 11
    .line 12
    const-string v2, "VIBRATE"

    .line 13
    .line 14
    const-string v3, "PLAY_SOUND"

    .line 15
    .line 16
    const-string v4, "ALLOW_RINGER_MODES"

    .line 17
    .line 18
    const-string v5, "REMOVE_SOUND_AND_VIBRATE"

    .line 19
    .line 20
    const-string v6, "SHOW_VIBRATE_HINT"

    .line 21
    .line 22
    const-string v7, "SHOW_SILENT_HINT"

    .line 23
    .line 24
    const-string v8, "FROM_KEY"

    .line 25
    .line 26
    const-string v9, "SHOW_UI_WARNINGS"

    .line 27
    .line 28
    const-string v10, "MULTI_SOUND"

    .line 29
    .line 30
    const-string v11, "DISPLAY_VOLUME_CONTROL"

    .line 31
    .line 32
    const-string v12, "REMOTE_MIC"

    .line 33
    .line 34
    const-string v13, "DUAL_A2DP_MODE"

    .line 35
    .line 36
    const-string v14, "FIXED_SCO_VOLUME"

    .line 37
    .line 38
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/systemui/volume/Util;->SAMSUNG_AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
        0x800000
        0x400000
        0x4000000
        0x80000
        0x40000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/settingslib/volume/Util;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "vol."

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x17

    .line 17
    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    return-object p0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "RINGER_MODE_UNKNOWN_"

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "RINGER_MODE_NORMAL"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const-string p0, "RINGER_MODE_VIBRATE"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    const-string p0, "RINGER_MODE_SILENT"

    .line 23
    .line 24
    return-object p0
.end method
