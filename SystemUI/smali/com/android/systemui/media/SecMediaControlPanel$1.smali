.class public final Lcom/android/systemui/media/SecMediaControlPanel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->isDisabledPlayer()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->expandIconNeedToShow()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mToggleCallback:Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-boolean p1, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 30
    .line 31
    const-string/jumbo v0, "type"

    .line 32
    .line 33
    .line 34
    const-string v1, "button"

    .line 35
    .line 36
    const-string v2, "QPNE0021"

    .line 37
    .line 38
    invoke-static {p1, v2, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$1;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mToggleCallback:Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget p1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->$r8$clinit:I

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->shouldPlayerExpand()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getExpandedHeight()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setHeight(I)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method
