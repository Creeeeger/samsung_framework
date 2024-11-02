.class public final Lcom/android/systemui/qs/cinema/QSCinemaLogger$ScreenShotLogProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/cinema/QSCinemaLogger;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/cinema/QSCinemaLogger;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger$ScreenShotLogProvider;->this$0:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/cinema/QSCinemaLogger;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaLogger$ScreenShotLogProvider;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaLogger;)V

    return-void
.end method


# virtual methods
.method public final gatherState()Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger$ScreenShotLogProvider;->this$0:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const-string v1, "QSCinemaLogger ## Quickpanel View State of Screen Capture ########"

    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger;->mTmpLog:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/cinema/QSCinemaLogger;->visitLayoutTreeToAssembleLogLine(Landroid/view/ViewGroup;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaLogger;->mTmpLog:Ljava/util/ArrayList;

    .line 44
    .line 45
    return-object p0
.end method
