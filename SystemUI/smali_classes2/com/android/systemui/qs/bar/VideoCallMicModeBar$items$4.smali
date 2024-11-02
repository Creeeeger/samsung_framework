.class public final synthetic Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallMicModeBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;->$tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$items$4;->$tmp0:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;->items:Lkotlin/sequences/Sequence;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/VideoCallMicModeBar$VideoCallMicModeBarBase;->updateContents()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
