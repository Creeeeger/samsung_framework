.class public final Lcom/samsung/android/nexus/video/VideoLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/video/VideoLayer$BackupData;,
        Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;,
        Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;,
        Lcom/samsung/android/nexus/video/VideoLayer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoLayer$Companion;

.field private static final RESET_MAX_CNT:I = 0x2710

.field private static final RESET_REASON_CORE:I = 0x0

.field private static final RESET_REASON_GL_ERROR:I = 0x2

.field private static final RESET_REASON_MEDIA_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

.field private errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

.field private isAutoPlayNextMediaSource:Z

.field private isLoopingMediaSources:Z

.field private mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

.field private mFd:Ljava/io/FileDescriptor;

.field private mIsCreated:Z

.field private mNeedToRecreate:Z

.field private final mObjectRect:Landroid/graphics/Rect;

.field private mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

.field private mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

.field private final mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

.field private final mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

.field private mUri:Landroid/net/Uri;

.field private mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

.field private preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

.field private videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->Companion:Lcom/samsung/android/nexus/video/VideoLayer$Companion;

    .line 8
    .line 9
    const-string v0, "VideoLayer"

    .line 10
    .line 11
    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 27

    move-object/from16 v15, p0

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mObjectRect:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 3
    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-direct {v0, v15}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    iput-object v0, v15, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    .line 4
    new-instance v14, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    move-object v0, v14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v26, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x3fffff

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/RectF;Landroid/graphics/RectF;[F[FLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v1, v0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    return-void
.end method

.method public static final synthetic access$getMReservedActions$p(Lcom/samsung/android/nexus/video/VideoLayer;)Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$reset(Lcom/samsung/android/nexus/video/VideoLayer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->reset(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setDataSource(Lcom/samsung/android/nexus/video/VideoLayer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final clearAsync()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Clear async"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoGL;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 17
    .line 18
    return-void
.end method

.method private final clearLocked(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Clear locked"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mOldVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/nexus/video/VideoGL;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic clearLocked$default(Lcom/samsung/android/nexus/video/VideoLayer;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final create()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$2;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$4;-><init>(Lcom/samsung/android/nexus/video/VideoLayer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->onCreate(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->prepareVideoGl()Lcom/samsung/android/nexus/video/VideoGL;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 70
    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method private final prepareVideoGl()Lcom/samsung/android/nexus/video/VideoGL;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Prepare GL"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/nexus/video/VideoGL;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mObjectRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/nexus/video/VideoGL;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/video/VideoPlayer;Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private final reset(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;->addCount(I)V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked(Z)V

    .line 4
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    return-void
.end method

.method private final resetAsync()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->clearAsync()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->create()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->restore()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final setDataSource()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mUri:Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 16
    .line 17
    if-eqz v2, :cond_6

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaUri(Landroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaAssetFd(Landroid/content/res/AssetFileDescriptor;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMediaFd(Ljava/io/FileDescriptor;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 51
    .line 52
    new-instance v1, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 53
    .line 54
    const-class v3, Ljava/lang/String;

    .line 55
    .line 56
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getVideoOrientation()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    filled-new-array {v4}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "setVideoOrientation"

    .line 69
    .line 70
    invoke-direct {v1, v5, v3, v4}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 77
    .line 78
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    .line 79
    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    const/4 v1, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 92
    .line 93
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 94
    .line 95
    const-string v2, "setDataSource"

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-direct {v0, v2, v3, v3}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 102
    .line 103
    .line 104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 105
    .line 106
    :goto_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Clear"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->clearLocked$default(Lcom/samsung/android/nexus/video/VideoLayer;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContrast()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getContrast()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 11
    .line 12
    :goto_0
    return p0
.end method

.method public final getCurrentPosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getCurrentPosition()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getGlobalAlpha()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getGlobalAlpha()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    :goto_0
    return p0
.end method

.method public final getHdrModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHdrModeEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getHdrSaturation()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHdrSaturation()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 11
    .line 12
    :goto_0
    return p0
.end method

.method public final getHsvHue()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvHue()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getHsvSaturation()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvSaturation()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    .line 11
    .line 12
    :goto_0
    return p0
.end method

.method public final getHsvValue()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getHsvValue()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    .line 11
    .line 12
    :goto_0
    return p0
.end method

.method public final getOffsetX()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getOffsetX()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getOffsetY()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getOffsetY()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSeekCompleteListener()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTransparencyEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getTransparencyEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getVideoStateChangedListener()Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final isAutoPlayNextMediaSource()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isLoopingMediaSources()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isLoopingMediaSources:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public onAmbientModeChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->create()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Destroyed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDraw()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mNeedToRecreate:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->resetAsync()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL;->onDrawFrame()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setWorldWidth(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setWorldHeight(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setWorldSize(II)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    filled-new-array {v1, v1}, [Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "onSizeChanged"

    .line 40
    .line 41
    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public onTapEvent(IIJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final pausePlayer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Pause player."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 9
    .line 10
    const-string v1, "pausePlayer"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$3:[I

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    aget v3, v4, v3

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v3, v4, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->pause()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 63
    .line 64
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->reset(I)V

    return-void
.end method

.method public final seekToPlayer(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Seek to "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 21
    .line 22
    const-string v1, "seekToPlayer"

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$4:[I

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    aget v2, v3, v2

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    if-eq v2, v3, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    if-eq v2, v1, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    if-eq v2, v1, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    if-eq v2, v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->seekTo(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    .line 55
    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 67
    .line 68
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 69
    .line 70
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    filled-new-array {p1}, [Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 92
    .line 93
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 94
    .line 95
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 96
    .line 97
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    filled-new-array {p1}, [Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 113
    .line 114
    .line 115
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 116
    .line 117
    :cond_3
    :goto_0
    return-void
.end method

.method public final setAutoPlayNextMediaSource(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBoundRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setBoundRect(Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setBoundRect(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setBoundRect(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 5
    const-class v1, Landroid/graphics/RectF;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 6
    filled-new-array {p1}, [Landroid/graphics/RectF;

    move-result-object p1

    const-string v2, "setBoundRect"

    .line 7
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->completionListener:Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setContrast(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setContrast(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setContrast(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setContrast"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setCropRect(Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setCropRect(Landroid/graphics/RectF;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setCropRect(Landroid/graphics/RectF;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 22
    .line 23
    const-class v1, Landroid/graphics/RectF;

    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    filled-new-array {p1}, [Landroid/graphics/RectF;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v2, "setCropRect"

    .line 34
    .line 35
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public final setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->errorListener:Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setGlobalAlpha(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setGlobalAlpha(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setGlobalAlpha(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setGlobalAlpha"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setHdrModeEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrModeEnabled(Ljava/lang/Boolean;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 4
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "setHdrModeEnabled"

    .line 7
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHdrModeEnabled(ZFF)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrModeEnabled(Ljava/lang/Boolean;)V

    .line 11
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrSaturation(Ljava/lang/Float;)V

    .line 12
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setContrast(Ljava/lang/Float;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrModeEnabled(ZFF)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 15
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "setHdrModeEnabled"

    .line 18
    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setHdrSaturation(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHdrSaturation(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHdrSaturation(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setHdrSaturation"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setHsvFilterColor([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [F

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setHsvFilterColor([F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvFilterColor([F)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 23
    .line 24
    const-class v1, [F

    .line 25
    .line 26
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    filled-new-array {p1}, [[F

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "setHsvFilterColor"

    .line 35
    .line 36
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final setHsvHue(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aput p1, v0, v1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvHue(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setHsvHue"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setHsvSaturation(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    aput p1, v0, v1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvSaturation(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setHsvSaturation"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setHsvValue(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->getHsvFilterColor()[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    aput p1, v0, v1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setHsvValue(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setHsvValue"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setLooping(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setLooping(Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 11
    .line 12
    const-string v1, "setLooping"

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    aget v2, v3, v2

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x3

    .line 35
    if-eq v2, v3, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 38
    .line 39
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    filled-new-array {p1}, [Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setLooping(Z)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 67
    .line 68
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 69
    .line 70
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    filled-new-array {p1}, [Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public final setLoopingMediaSources(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->isLoopingMediaSources:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMediaSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 5
    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setMediaSource(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mUri:Landroid/net/Uri;

    .line 2
    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setMediaSource(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mFd:Ljava/io/FileDescriptor;

    .line 8
    iget-boolean p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mIsCreated:Z

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setDataSource()Z

    :cond_0
    return-void
.end method

.method public final setOffset(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetX(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetY(Ljava/lang/Float;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetZ(Ljava/lang/Float;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoGL;->setOffset(FFF)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 33
    .line 34
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 35
    .line 36
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    filled-new-array {v1, v1, v1}, [Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    filled-new-array {p1, p2, p3}, [Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "setOffset"

    .line 59
    .line 60
    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method public final setOffsetXY(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetX(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setOffsetY(Ljava/lang/Float;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setOffsetXY(FF)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    filled-new-array {v1, v1}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    filled-new-array {p1, p2}, [Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "setOffsetXY"

    .line 48
    .line 49
    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->preparedListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setRgbFilterColor([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, [F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRgbFilterColor([F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setRgbFilterColor([F)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 25
    .line 26
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 27
    .line 28
    const-class v1, [F

    .line 29
    .line 30
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    filled-new-array {p1}, [[F

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v2, "setRgbFilterColor"

    .line 39
    .line 40
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public final setRotation(FFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationAngle(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationX(Ljava/lang/Float;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationY(Ljava/lang/Float;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setRotationZ(Ljava/lang/Float;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/video/VideoGL;->setRotation(FFFF)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 40
    .line 41
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 42
    .line 43
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v1, v1, v1, v1}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "setRotation"

    .line 70
    .line 71
    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public final setScale(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setScale(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setScale(F)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setScale"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->seekCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setSize(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setObjectWidth(Ljava/lang/Float;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setObjectHeight(Ljava/lang/Float;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/video/VideoGL;->setSize(FF)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 26
    .line 27
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    filled-new-array {v1, v1}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    filled-new-array {p1, p2}, [Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "setSize"

    .line 48
    .line 49
    invoke-direct {v0, p2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final setTransparencyEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mBackupData:Lcom/samsung/android/nexus/video/VideoLayer$BackupData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer$BackupData;->setTransparencyEnabled(Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setTransparencyEnabled(Z)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    filled-new-array {p1}, [Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "setTransparencyEnabled"

    .line 37
    .line 38
    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 42
    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final setVideoOrientation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mVideoGl:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoGL;->setVideoOrientation(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setVideoStateChangedListener(Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public final startPlayer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Start player."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mResetLogger:Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer$ResetLogger;->print()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 14
    .line 15
    const-string v1, "startPlayer"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    aget v3, v4, v3

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq v3, v4, :cond_0

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 42
    .line 43
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 44
    .line 45
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 68
    .line 69
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 70
    .line 71
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 75
    .line 76
    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method public final stopPlayer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/nexus/video/VideoLayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Stop player."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mPlayer:Lcom/samsung/android/nexus/video/VideoPlayer;

    .line 9
    .line 10
    const-string v1, "stopPlayer"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    aget v3, v4, v3

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eq v3, v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v3, v4, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 37
    .line 38
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->stop()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->videoStateChangedListener:Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer$VideoStateChangedListener;->onStateChanged(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer;->mReservedActions:Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;

    .line 63
    .line 64
    new-instance v0, Lcom/samsung/android/nexus/base/reflection/ReservedAction;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/nexus/base/reflection/ReservedAction;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/reflection/ReservedActionQueue;->add(Lcom/samsung/android/nexus/base/reflection/ReservedAction;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method
