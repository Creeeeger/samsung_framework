.class public final Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaPlayerData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaPlayerData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 16
    .line 17
    sget v2, Lcom/android/systemui/media/SecMediaPlayerData;->$r8$clinit:I

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$1;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 36
    .line 37
    iget p0, p0, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-ne p0, p1, :cond_0

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    return p0
.end method
