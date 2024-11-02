.class public final Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $it:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$1;->$it:Lcom/android/systemui/media/SecMediaControlPanel;

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
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$1;->$it:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
