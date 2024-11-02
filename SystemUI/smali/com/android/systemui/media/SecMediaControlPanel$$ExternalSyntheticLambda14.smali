.class public final synthetic Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;ILjava/lang/String;Landroid/widget/ImageButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$3:Landroid/widget/ImageButton;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$1:I

    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda14;->f$3:Landroid/widget/ImageButton;

    .line 8
    .line 9
    check-cast p1, Landroid/widget/ImageButton;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 15
    .line 16
    const-string v3, "QPNE0003"

    .line 17
    .line 18
    const-string/jumbo v4, "type"

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v6, "app"

    .line 26
    .line 27
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mLogger:Lcom/android/systemui/log/MediaLogger;

    .line 41
    .line 42
    check-cast v0, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 43
    .line 44
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/log/MediaLoggerImpl;->onActionClicked(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
