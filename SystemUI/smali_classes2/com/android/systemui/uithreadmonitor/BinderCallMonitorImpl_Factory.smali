.class public final Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl_Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final mLoggerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl_Factory;->mLoggerProvider:Ljavax/inject/Provider;

    .line 5
    .line 6
    return-void
.end method

.method public static newInstance()Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl_Factory;->mLoggerProvider:Ljavax/inject/Provider;

    .line 7
    .line 8
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/log/SamsungServiceLogger;

    .line 13
    .line 14
    iput-object p0, v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->mLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 15
    .line 16
    return-object v0
.end method
