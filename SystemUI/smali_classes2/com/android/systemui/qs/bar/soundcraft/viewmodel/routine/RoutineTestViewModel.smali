.class public final Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;
.super Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final audioPlaybackManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;

.field public final modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

.field public final routineCount:Landroidx/lifecycle/MutableLiveData;

.field public final routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->audioPlaybackManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;

    .line 9
    .line 10
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->routineCount:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
