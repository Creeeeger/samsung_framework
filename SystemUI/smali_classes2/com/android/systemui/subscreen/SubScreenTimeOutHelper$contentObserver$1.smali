.class public final Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 5
    .line 6
    sget p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->readScreenTimeOut()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 13
    .line 14
    iget v0, p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const-string v1, "onChange: "

    .line 19
    .line 20
    const-string v2, " -> "

    .line 21
    .line 22
    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->panelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 27
    .line 28
    check-cast v1, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->layoutParamsSupplier:Ljava/util/function/Supplier;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;->this$0:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    .line 46
    .line 47
    int-to-long v1, p1

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->windowManagerSupplier:Ljava/util/function/Supplier;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/view/WindowManager;

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->subScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Landroid/view/View;

    .line 68
    .line 69
    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iput p1, p2, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    .line 73
    .line 74
    :cond_1
    return-void
.end method
