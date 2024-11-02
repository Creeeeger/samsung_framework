.class public abstract Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ART_URIS:[Ljava/lang/String;

.field public static final EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

.field public static final LOADING:Lcom/android/systemui/media/controls/models/player/MediaData;


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    .line 1
    const-string v0, "android.media.metadata.ART_URI"

    .line 2
    .line 3
    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    .line 4
    .line 5
    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    sget-object v33, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const-string v12, "INVALID"

    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, 0x0

    .line 30
    const/16 v16, 0x1

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    const/16 v19, 0x0

    .line 37
    .line 38
    const/16 v20, 0x0

    .line 39
    .line 40
    const/16 v21, 0x0

    .line 41
    .line 42
    const/16 v22, 0x0

    .line 43
    .line 44
    const/16 v23, 0x0

    .line 45
    .line 46
    const-wide/16 v24, 0x0

    .line 47
    .line 48
    const/16 v34, -0x1

    .line 49
    .line 50
    invoke-static/range {v34 .. v34}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    .line 51
    .line 52
    .line 53
    move-result-object v26

    .line 54
    const/16 v27, -0x1

    .line 55
    .line 56
    const/16 v28, 0x0

    .line 57
    .line 58
    const/16 v29, 0x0

    .line 59
    .line 60
    const/16 v30, 0x0

    .line 61
    .line 62
    const v31, 0xe7f0200

    .line 63
    .line 64
    .line 65
    const/16 v32, 0x0

    .line 66
    .line 67
    move-object v1, v0

    .line 68
    move-object/from16 v9, v33

    .line 69
    .line 70
    move-object/from16 v10, v33

    .line 71
    .line 72
    invoke-direct/range {v1 .. v32}, Lcom/android/systemui/media/controls/models/player/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;Lcom/android/systemui/media/controls/models/player/SecMediaDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->LOADING:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 76
    .line 77
    new-instance v0, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 78
    .line 79
    const-string v10, "INVALID"

    .line 80
    .line 81
    const/4 v11, 0x0

    .line 82
    const-string v12, "INVALID"

    .line 83
    .line 84
    const/4 v15, 0x0

    .line 85
    const-wide/16 v16, 0x0

    .line 86
    .line 87
    invoke-static/range {v34 .. v34}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    .line 88
    .line 89
    .line 90
    move-result-object v18

    .line 91
    const-wide/16 v19, 0x0

    .line 92
    .line 93
    move-object v9, v0

    .line 94
    move-object/from16 v14, v33

    .line 95
    .line 96
    invoke-direct/range {v9 .. v20}, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;J)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 100
    .line 101
    return-void
.end method
