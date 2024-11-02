.class public final Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

.field public static sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;


# instance fields
.field public mMainView:Landroid/view/View;

.field public mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    .line 11
    .line 12
    sget-object v3, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v0, v0, Lcom/android/systemui/qs/InjectionInflationController;->mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0d047a

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SETTINGS_SUBSCREEN:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    .line 49
    .line 50
    sget-object v3, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v0, v0, Lcom/android/systemui/qs/InjectionInflationController;->mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0d0479

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 80
    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    sput-object p1, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    .line 8
    .line 9
    new-instance p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 15
    .line 16
    :cond_0
    const-string p0, "SubscreenSubRoomQuickPanel"

    .line 17
    .line 18
    const-string p1, "getInstance()"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public final getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onCloseFinished()V
    .locals 1

    .line 1
    const-string p0, "SubscreenSubRoomQuickPanel"

    .line 2
    .line 3
    const-string v0, "SSRQS onCloseFinished "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onCloseStarted()V
    .locals 1

    .line 1
    const-string p0, "SubscreenSubRoomQuickPanel"

    .line 2
    .line 3
    const-string v0, "SSRQS onCloseStarted "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onOpenFinished()V
    .locals 1

    .line 1
    const-string p0, "SubscreenSubRoomQuickPanel"

    .line 2
    .line 3
    const-string v0, "SSRQS onOpenFinished "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onOpenStarted()V
    .locals 1

    .line 1
    const-string p0, "SubscreenSubRoomQuickPanel"

    .line 2
    .line 3
    const-string v0, "SSRQS onOpenStarted "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final removeListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public final request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    .line 2
    .line 3
    return-void
.end method
