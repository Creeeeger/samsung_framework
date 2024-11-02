.class public final synthetic Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSTileInstanceManager;Landroid/util/ArrayMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/qs/SecQSTileInstanceManager$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileInstances:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    instance-of v3, v3, Lcom/android/systemui/qs/external/CustomTile;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    new-instance p0, Landroid/util/ArraySet;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mTileUsingHosts:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSTileInstanceManager;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->isBarTile(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 49
    .line 50
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method
