.class public final Lcom/android/systemui/volume/store/StoreInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

.field public final mainThreadHandler$delegate:Lkotlin/Lazy;

.field public final stateObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

.field public store:Lcom/android/systemui/volume/store/VolumePanelStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;",
            "Lcom/android/systemui/volume/store/VolumePanelStore;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/systemui/volume/store/StoreInteractor;->stateObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 5
    sget-object p1, Lcom/android/systemui/volume/store/StoreInteractor$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/volume/store/StoreInteractor$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/store/StoreInteractor;->mainThreadHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/volume/VolumeDisposable;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 10
    .line 11
    return-void
.end method

.method public final observeStore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->stateObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/store/VolumePanelStore;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->disposable:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/volume/store/StoreInteractor;->mainThreadHandler$delegate:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/Handler;

    .line 15
    .line 16
    new-instance p2, Lcom/android/systemui/volume/store/StoreInteractor$sendAction$1;

    .line 17
    .line 18
    invoke-direct {p2, v0, p1}, Lcom/android/systemui/volume/store/StoreInteractor$sendAction$1;-><init>(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
