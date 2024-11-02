.class public final synthetic Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SyncTile$SyncDetailAdapter;->setToggleState(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
