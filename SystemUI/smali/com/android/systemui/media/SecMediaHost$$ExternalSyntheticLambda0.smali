.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->setListening(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaHost;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 26
    .line 27
    check-cast p1, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 36
    .line 37
    check-cast p1, Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 46
    .line 47
    check-cast p1, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda14;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p0}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 63
    .line 64
    check-cast p1, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 v1, 0x5

    .line 72
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/SecMediaHost;I)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 80
    .line 81
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->expandCallback:Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

    .line 86
    .line 87
    iput-object p0, p1, Lcom/android/systemui/media/SecMediaControlPanel;->mToggleCallback:Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
