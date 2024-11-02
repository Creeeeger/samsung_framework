.class public final Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaPlayerData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaPlayerData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData$currentMediaData$2;->this$0:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 10
    .line 11
    sget v0, Lcom/android/systemui/media/SecMediaPlayerData;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 22
    .line 23
    return-object p0
.end method
