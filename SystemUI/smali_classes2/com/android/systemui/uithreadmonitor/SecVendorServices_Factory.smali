.class public final Lcom/android/systemui/uithreadmonitor/SecVendorServices_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final binderCallMonitorProvider:Ljavax/inject/Provider;

.field public final looperSlowLogControllerProvider:Ljavax/inject/Provider;

.field public final uiThreadMonitorProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices_Factory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices_Factory;->uiThreadMonitorProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices_Factory;->looperSlowLogControllerProvider:Ljavax/inject/Provider;

    .line 9
    .line 10
    return-void
.end method

.method public static newInstance()Lcom/android/systemui/uithreadmonitor/SecVendorServices;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/uithreadmonitor/SecVendorServices;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/uithreadmonitor/SecVendorServices;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices_Factory;->binderCallMonitorProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices_Factory;->uiThreadMonitorProvider:Ljavax/inject/Provider;

    .line 17
    .line 18
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->uiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/SecVendorServices_Factory;->looperSlowLogControllerProvider:Ljavax/inject/Provider;

    .line 27
    .line 28
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 33
    .line 34
    iput-object p0, v0, Lcom/android/systemui/uithreadmonitor/SecVendorServices;->looperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    .line 35
    .line 36
    return-object v0
.end method
