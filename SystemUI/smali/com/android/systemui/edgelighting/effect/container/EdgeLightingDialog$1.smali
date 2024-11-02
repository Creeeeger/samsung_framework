.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->-$$Nest$mdismissInternal(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method
