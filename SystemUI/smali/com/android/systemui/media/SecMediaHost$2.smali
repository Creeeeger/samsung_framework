.class public final Lcom/android/systemui/media/SecMediaHost$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 16

    .line 1
    new-instance v7, Lcom/android/systemui/media/MediaDataFormat;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move/from16 v4, p4

    .line 11
    .line 12
    move/from16 v5, p5

    .line 13
    .line 14
    move/from16 v6, p6

    .line 15
    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/MediaDataFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V

    .line 17
    .line 18
    .line 19
    move-object/from16 v0, p0

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    .line 22
    .line 23
    iput-object v7, v1, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    move-object v8, v2

    .line 30
    move-object/from16 v9, p0

    .line 31
    .line 32
    move-object/from16 v10, p1

    .line 33
    .line 34
    move-object/from16 v11, p2

    .line 35
    .line 36
    move-object/from16 v12, p3

    .line 37
    .line 38
    move/from16 v13, p4

    .line 39
    .line 40
    move/from16 v14, p5

    .line 41
    .line 42
    move/from16 v15, p6

    .line 43
    .line 44
    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost$2;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const-string v3, "  "

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v1, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/log/MediaLoggerImpl;->onMediaDataRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v2, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, p0, p1, v3}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    iput-object p0, v0, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    .line 31
    .line 32
    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
.end method
