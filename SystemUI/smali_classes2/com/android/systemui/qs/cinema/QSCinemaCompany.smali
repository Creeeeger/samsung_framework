.class public final Lcom/android/systemui/qs/cinema/QSCinemaCompany;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final mDirector:Lcom/android/systemui/qs/cinema/QSCinemaDirector;

.field public final mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

.field public final mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/cinema/QSCinemaDirector;Lcom/android/systemui/qs/cinema/QSCinemaProvider;Lcom/android/systemui/qs/cinema/QSCinemaLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mDirector:Lcom/android/systemui/qs/cinema/QSCinemaDirector;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/cinema/QSCinemaCompany$ProviderToCompanyCallback;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaCompany;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    .line 17
    .line 18
    iget-object p1, p2, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p2, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 24
    .line 25
    iget-object p3, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p3, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p2, p2, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 33
    .line 34
    invoke-interface {p2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    :goto_0
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTilesChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/qs/cinema/QSCinemaLogger$ScreenShotLogProvider;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/cinema/QSCinemaLogger$ScreenShotLogProvider;-><init>(Lcom/android/systemui/qs/cinema/QSCinemaLogger;I)V

    .line 12
    .line 13
    .line 14
    const-string p0, "QSCinemaLogger"

    .line 15
    .line 16
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mProvider:Lcom/android/systemui/qs/cinema/QSCinemaProvider;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/cinema/QSCinemaProvider;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/cinema/QSCinemaCompany;->mLogger:Lcom/android/systemui/qs/cinema/QSCinemaLogger;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    .line 14
    .line 15
    const-string p1, "QSCinemaLogger"

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    sget-object v0, Lcom/android/systemui/logging/PanelScreenShotLogger;->providers:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method
