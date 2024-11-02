package androidx.core.app;

import android.app.Notification;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.app.Person;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationCompat$MessagingStyle extends NotificationCompat$Style {
    public CharSequence mConversationTitle;
    public Boolean mIsGroupConversation;
    public Person mUser;
    public final List mMessages = new ArrayList();
    public final List mHistoricMessages = new ArrayList();

    public NotificationCompat$MessagingStyle() {
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void addCompatExtras(Bundle bundle) {
        Bundle bundle2;
        super.addCompatExtras(bundle);
        bundle.putCharSequence("android.selfDisplayName", this.mUser.mName);
        Person person = this.mUser;
        person.getClass();
        Bundle bundle3 = new Bundle();
        bundle3.putCharSequence("name", person.mName);
        IconCompat iconCompat = person.mIcon;
        if (iconCompat != null) {
            bundle2 = iconCompat.toBundle();
        } else {
            bundle2 = null;
        }
        bundle3.putBundle("icon", bundle2);
        bundle3.putString("uri", person.mUri);
        bundle3.putString("key", person.mKey);
        bundle3.putBoolean("isBot", person.mIsBot);
        bundle3.putBoolean("isImportant", person.mIsImportant);
        bundle.putBundle("android.messagingStyleUser", bundle3);
        bundle.putCharSequence("android.hiddenConversationTitle", this.mConversationTitle);
        if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
            bundle.putCharSequence("android.conversationTitle", this.mConversationTitle);
        }
        List list = this.mMessages;
        if (!((ArrayList) list).isEmpty()) {
            bundle.putParcelableArray("android.messages", Message.getBundleArrayForMessages(list));
        }
        List list2 = this.mHistoricMessages;
        if (!((ArrayList) list2).isEmpty()) {
            bundle.putParcelableArray("android.messages.historic", Message.getBundleArrayForMessages(list2));
        }
        Boolean bool = this.mIsGroupConversation;
        if (bool != null) {
            bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void apply(NotificationCompatBuilder notificationCompatBuilder) {
        boolean booleanValue;
        NotificationCompat$Builder notificationCompat$Builder = this.mBuilder;
        if (notificationCompat$Builder != null && notificationCompat$Builder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.mIsGroupConversation == null) {
            if (this.mConversationTitle != null) {
                booleanValue = true;
            }
            booleanValue = false;
        } else {
            Boolean bool = this.mIsGroupConversation;
            if (bool != null) {
                booleanValue = bool.booleanValue();
            }
            booleanValue = false;
        }
        this.mIsGroupConversation = Boolean.valueOf(booleanValue);
        Notification.MessagingStyle messagingStyle = new Notification.MessagingStyle(this.mUser.toAndroidPerson());
        Iterator it = ((ArrayList) this.mMessages).iterator();
        while (it.hasNext()) {
            messagingStyle.addMessage(((Message) it.next()).toAndroidMessage());
        }
        Iterator it2 = ((ArrayList) this.mHistoricMessages).iterator();
        while (it2.hasNext()) {
            messagingStyle.addHistoricMessage(((Message) it2.next()).toAndroidMessage());
        }
        this.mIsGroupConversation.booleanValue();
        messagingStyle.setConversationTitle(this.mConversationTitle);
        messagingStyle.setGroupConversation(this.mIsGroupConversation.booleanValue());
        messagingStyle.setBuilder(notificationCompatBuilder.mBuilder);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void clearCompatExtraKeys(Bundle bundle) {
        super.clearCompatExtraKeys(bundle);
        bundle.remove("android.messagingStyleUser");
        bundle.remove("android.selfDisplayName");
        bundle.remove("android.conversationTitle");
        bundle.remove("android.hiddenConversationTitle");
        bundle.remove("android.messages");
        bundle.remove("android.messages.historic");
        bundle.remove("android.isGroupConversation");
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String getClassName() {
        return "androidx.core.app.NotificationCompat$MessagingStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void restoreFromCompatExtras(Bundle bundle) {
        super.restoreFromCompatExtras(bundle);
        ArrayList arrayList = (ArrayList) this.mMessages;
        arrayList.clear();
        if (bundle.containsKey("android.messagingStyleUser")) {
            this.mUser = Person.fromBundle(bundle.getBundle("android.messagingStyleUser"));
        } else {
            Person.Builder builder = new Person.Builder();
            builder.mName = bundle.getString("android.selfDisplayName");
            this.mUser = new Person(builder);
        }
        CharSequence charSequence = bundle.getCharSequence("android.conversationTitle");
        this.mConversationTitle = charSequence;
        if (charSequence == null) {
            this.mConversationTitle = bundle.getCharSequence("android.hiddenConversationTitle");
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("android.messages");
        if (parcelableArray != null) {
            arrayList.addAll(Message.getMessagesFromBundleArray(parcelableArray));
        }
        Parcelable[] parcelableArray2 = bundle.getParcelableArray("android.messages.historic");
        if (parcelableArray2 != null) {
            ((ArrayList) this.mHistoricMessages).addAll(Message.getMessagesFromBundleArray(parcelableArray2));
        }
        if (bundle.containsKey("android.isGroupConversation")) {
            this.mIsGroupConversation = Boolean.valueOf(bundle.getBoolean("android.isGroupConversation"));
        }
    }

    @Deprecated
    public NotificationCompat$MessagingStyle(CharSequence charSequence) {
        Person.Builder builder = new Person.Builder();
        builder.mName = charSequence;
        this.mUser = new Person(builder);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Message {
        public String mDataMimeType;
        public Uri mDataUri;
        public final Bundle mExtras;
        public final Person mPerson;
        public final CharSequence mText;
        public final long mTimestamp;

        public Message(CharSequence charSequence, long j, Person person) {
            this.mExtras = new Bundle();
            this.mText = charSequence;
            this.mTimestamp = j;
            this.mPerson = person;
        }

        public static Bundle[] getBundleArrayForMessages(List list) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Message message = (Message) list.get(i);
                message.getClass();
                Bundle bundle = new Bundle();
                CharSequence charSequence = message.mText;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", message.mTimestamp);
                Person person = message.mPerson;
                if (person != null) {
                    bundle.putCharSequence("sender", person.mName);
                    bundle.putParcelable("sender_person", person.toAndroidPerson());
                }
                String str = message.mDataMimeType;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = message.mDataUri;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = message.mExtras;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                bundleArr[i] = bundle;
            }
            return bundleArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a9, code lost:
        
            r0.add(r11);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static java.util.List getMessagesFromBundleArray(android.os.Parcelable[] r13) {
            /*
                java.util.ArrayList r0 = new java.util.ArrayList
                int r1 = r13.length
                r0.<init>(r1)
                r1 = 0
            L7:
                int r2 = r13.length
                if (r1 >= r2) goto Lb0
                r2 = r13[r1]
                boolean r3 = r2 instanceof android.os.Bundle
                if (r3 == 0) goto Lac
                android.os.Bundle r2 = (android.os.Bundle) r2
                java.lang.String r3 = "uri"
                java.lang.String r4 = "extras"
                java.lang.String r5 = "type"
                java.lang.String r6 = "sender"
                java.lang.String r7 = "sender_person"
                java.lang.String r8 = "person"
                java.lang.String r9 = "time"
                java.lang.String r10 = "text"
                r11 = 0
                boolean r12 = r2.containsKey(r10)     // Catch: java.lang.ClassCastException -> La7
                if (r12 == 0) goto La7
                boolean r12 = r2.containsKey(r9)     // Catch: java.lang.ClassCastException -> La7
                if (r12 != 0) goto L38
                goto La7
            L38:
                boolean r12 = r2.containsKey(r8)     // Catch: java.lang.ClassCastException -> La7
                if (r12 == 0) goto L47
                android.os.Bundle r6 = r2.getBundle(r8)     // Catch: java.lang.ClassCastException -> La7
                androidx.core.app.Person r6 = androidx.core.app.Person.fromBundle(r6)     // Catch: java.lang.ClassCastException -> La7
                goto L70
            L47:
                boolean r8 = r2.containsKey(r7)     // Catch: java.lang.ClassCastException -> La7
                if (r8 == 0) goto L58
                android.os.Parcelable r6 = r2.getParcelable(r7)     // Catch: java.lang.ClassCastException -> La7
                android.app.Person r6 = (android.app.Person) r6     // Catch: java.lang.ClassCastException -> La7
                androidx.core.app.Person r6 = androidx.core.app.Person.fromAndroidPerson(r6)     // Catch: java.lang.ClassCastException -> La7
                goto L70
            L58:
                boolean r7 = r2.containsKey(r6)     // Catch: java.lang.ClassCastException -> La7
                if (r7 == 0) goto L6f
                androidx.core.app.Person$Builder r7 = new androidx.core.app.Person$Builder     // Catch: java.lang.ClassCastException -> La7
                r7.<init>()     // Catch: java.lang.ClassCastException -> La7
                java.lang.CharSequence r6 = r2.getCharSequence(r6)     // Catch: java.lang.ClassCastException -> La7
                r7.mName = r6     // Catch: java.lang.ClassCastException -> La7
                androidx.core.app.Person r6 = new androidx.core.app.Person     // Catch: java.lang.ClassCastException -> La7
                r6.<init>(r7)     // Catch: java.lang.ClassCastException -> La7
                goto L70
            L6f:
                r6 = r11
            L70:
                androidx.core.app.NotificationCompat$MessagingStyle$Message r7 = new androidx.core.app.NotificationCompat$MessagingStyle$Message     // Catch: java.lang.ClassCastException -> La7
                java.lang.CharSequence r8 = r2.getCharSequence(r10)     // Catch: java.lang.ClassCastException -> La7
                long r9 = r2.getLong(r9)     // Catch: java.lang.ClassCastException -> La7
                r7.<init>(r8, r9, r6)     // Catch: java.lang.ClassCastException -> La7
                boolean r6 = r2.containsKey(r5)     // Catch: java.lang.ClassCastException -> La7
                if (r6 == 0) goto L97
                boolean r6 = r2.containsKey(r3)     // Catch: java.lang.ClassCastException -> La7
                if (r6 == 0) goto L97
                java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.ClassCastException -> La7
                android.os.Parcelable r3 = r2.getParcelable(r3)     // Catch: java.lang.ClassCastException -> La7
                android.net.Uri r3 = (android.net.Uri) r3     // Catch: java.lang.ClassCastException -> La7
                r7.mDataMimeType = r5     // Catch: java.lang.ClassCastException -> La7
                r7.mDataUri = r3     // Catch: java.lang.ClassCastException -> La7
            L97:
                boolean r3 = r2.containsKey(r4)     // Catch: java.lang.ClassCastException -> La7
                if (r3 == 0) goto La6
                android.os.Bundle r3 = r7.mExtras     // Catch: java.lang.ClassCastException -> La7
                android.os.Bundle r2 = r2.getBundle(r4)     // Catch: java.lang.ClassCastException -> La7
                r3.putAll(r2)     // Catch: java.lang.ClassCastException -> La7
            La6:
                r11 = r7
            La7:
                if (r11 == 0) goto Lac
                r0.add(r11)
            Lac:
                int r1 = r1 + 1
                goto L7
            Lb0:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat$MessagingStyle.Message.getMessagesFromBundleArray(android.os.Parcelable[]):java.util.List");
        }

        public final Notification.MessagingStyle.Message toAndroidMessage() {
            android.app.Person androidPerson;
            Person person = this.mPerson;
            if (person == null) {
                androidPerson = null;
            } else {
                androidPerson = person.toAndroidPerson();
            }
            Notification.MessagingStyle.Message message = new Notification.MessagingStyle.Message(this.mText, this.mTimestamp, androidPerson);
            String str = this.mDataMimeType;
            if (str != null) {
                message.setData(str, this.mDataUri);
            }
            return message;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        @java.lang.Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public Message(java.lang.CharSequence r2, long r3, java.lang.CharSequence r5) {
            /*
                r1 = this;
                androidx.core.app.Person$Builder r0 = new androidx.core.app.Person$Builder
                r0.<init>()
                r0.mName = r5
                androidx.core.app.Person r5 = new androidx.core.app.Person
                r5.<init>(r0)
                r1.<init>(r2, r3, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat$MessagingStyle.Message.<init>(java.lang.CharSequence, long, java.lang.CharSequence):void");
        }
    }

    public NotificationCompat$MessagingStyle(Person person) {
        if (!TextUtils.isEmpty(person.mName)) {
            this.mUser = person;
            return;
        }
        throw new IllegalArgumentException("User's name must not be empty.");
    }
}
