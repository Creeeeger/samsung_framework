.class public final Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mReady:Z

.field public final mTile:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    return-void
.end method
