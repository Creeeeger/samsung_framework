.class public interface abstract Lcom/sec/ims/scab/ICABService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/scab/ICABService$Stub;,
        Lcom/sec/ims/scab/ICABService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.scab.ICABService"


# virtual methods
.method public abstract addBatchOfContacts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract businessLineReadyForSync(Ljava/lang/String;Z)V
.end method

.method public abstract deleteBatchOfContacts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disableService()V
.end method

.method public abstract enableService()V
.end method

.method public abstract isPendingUploadContactsExists()Z
.end method

.method public abstract onBufferDBReadResult(JZ)V
.end method

.method public abstract processUndownloadedBusinessContacts(Ljava/lang/String;)V
.end method

.method public abstract updateBatchOfContacts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadAddressBook(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
