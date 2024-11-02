.class public final Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecPagedTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecPagedTileLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;->this$0:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUpdateQuickPanelEdit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;->this$0:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->distributeTilesRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
