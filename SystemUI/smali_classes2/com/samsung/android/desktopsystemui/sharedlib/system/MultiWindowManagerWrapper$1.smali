.class Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;
.super Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDexSnappingCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onWindowSnappingChanged(ILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onWindowSnappingChanged , taskId = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", othersBounds = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "[DS]MultiWindowManagerWrapper"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    .line 30
    .line 31
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;

    .line 50
    .line 51
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;->DeXWindowSnappingChanged(ILandroid/graphics/Rect;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
