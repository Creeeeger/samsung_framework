.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;->this$0:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
