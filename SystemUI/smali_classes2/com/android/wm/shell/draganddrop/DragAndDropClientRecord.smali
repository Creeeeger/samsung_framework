.class public final Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

.field public final mDisplayId:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/multiwindow/IDragAndDropClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mDisplayId:I

    .line 7
    .line 8
    return-void
.end method

.method public static from(Landroid/content/ClipData;I)Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_0
    const-string v1, "com.samsung.android.intent.extra.DRAG_AND_DROP_CLIENT"

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string p0, "DragAndDropClient"

    .line 31
    .line 32
    const-string v1, "Failed to getIBinderExtra. It\'s not drag from Edge"

    .line 33
    .line 34
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-object p0, v0

    .line 38
    :goto_0
    if-nez p0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/multiwindow/IDragAndDropClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IDragAndDropClient;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    move-object p0, v0

    .line 47
    :goto_2
    if-nez p0, :cond_4

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_4
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;-><init>(Lcom/samsung/android/multiwindow/IDragAndDropClient;I)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method
