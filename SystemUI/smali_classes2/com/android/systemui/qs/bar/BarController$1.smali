.class public final Lcom/android/systemui/qs/bar/BarController$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUpdateQuickPanelButtons()V
    .locals 2

    .line 1
    const-string v0, "BarController"

    .line 2
    .line 3
    const-string v1, "onUpdateQuickPanelButtons"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
