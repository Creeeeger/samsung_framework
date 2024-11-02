.class public final Lcom/android/systemui/log/SecPanelLoggerImpl$1$onBootAnimationFinished$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/log/SecPanelLoggerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/SecPanelLoggerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/SecPanelLoggerImpl$1$onBootAnimationFinished$1;->this$0:Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SecPanelLogger"

    .line 2
    .line 3
    return-object p0
.end method

.method public final onSecPanelExpansionStateChanged(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SecPanelExpansionStateNotifier ("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    const-string p1, "NOT INITIALIZED"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p1, "STATE_OPEN"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string p1, "STATE_ANIMATING"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string p1, "STATE_CLOSED"

    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, ") justBeginToOpen:"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl$1$onBootAnimationFinished$1;->this$0:Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    .line 45
    .line 46
    const-string p2, "PANEL_STATE_INFO"

    .line 47
    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/log/SecPanelLogWriter;->logPanel(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
