.class public final Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$2;->INSTANCE:Lcom/android/systemui/media/SecMediaPlayerData$mediaDataOrderByMediaList$1$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method
