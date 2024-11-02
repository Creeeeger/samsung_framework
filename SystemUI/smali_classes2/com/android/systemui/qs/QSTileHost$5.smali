.class public final Lcom/android/systemui/qs/QSTileHost$5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSTileHost;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$5;->this$0:Lcom/android/systemui/qs/QSTileHost;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/qs/QSTileHost$5;->val$index:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$5;->this$0:Lcom/android/systemui/qs/QSTileHost;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "QsWifiCallingTileIndex"

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/qs/QSTileHost$5;->val$index:I

    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
