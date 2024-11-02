.class public final Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fgetmPanelLogger(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Lcom/android/systemui/log/SecPanelLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DeviceState changed state: "

    .line 8
    .line 9
    invoke-static {v1, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/SecPanelLoggerImpl;->addCoverPanelStateLog(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->-$$Nest$fputmIsFlexMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
