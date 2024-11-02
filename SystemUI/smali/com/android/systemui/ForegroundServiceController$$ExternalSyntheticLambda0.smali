.class public final synthetic Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ForegroundServiceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActiveStateChanged(ZLjava/lang/String;II)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ForegroundServiceController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v6, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move-object v1, p0

    .line 10
    move v2, p3

    .line 11
    move v3, p4

    .line 12
    move-object v4, p2

    .line 13
    move v5, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ForegroundServiceController;IILjava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mMainHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
