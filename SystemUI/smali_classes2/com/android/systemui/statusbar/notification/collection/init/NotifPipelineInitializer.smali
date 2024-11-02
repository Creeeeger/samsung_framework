.class public final Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

.field public final mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

.field public final mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

.field public mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

.field public final mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field public final mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

.field public mShadeViewManager:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

.field public final mShadeViewManagerFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mPipelineWrapper:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifInflater:Lcom/android/systemui/statusbar/notification/collection/NotifInflaterImpl;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManagerFactory:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManagerFactory;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;-><init>(Ljava/io/PrintWriter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 3

    .line 1
    const-string v0, "STAGE 0: SETUP"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "notifPluggableCoordinators"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifPluggableCoordinators:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinators;

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "STAGE 1: LISTEN"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "notificationService"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotificationService:Lcom/android/systemui/statusbar/NotificationListener;

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "STAGE 2: BATCH EVENTS"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "groupCoalescer"

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mGroupCoalescer:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;

    .line 41
    .line 42
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "STAGE 3: COLLECT"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "notifCollection"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 56
    .line 57
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "STAGE 4: BUILD LIST"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "listBuilder"

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 71
    .line 72
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "STAGE 5: DISPATCH RENDER"

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v1, "renderStageManager"

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    .line 87
    .line 88
    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "STAGE 6: UPDATE SHADE"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->println(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v0, "shadeViewManager"

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/init/NotifPipelineInitializer;->mShadeViewManager:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    .line 103
    .line 104
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
