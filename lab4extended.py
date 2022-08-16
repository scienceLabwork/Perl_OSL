import cv2

def nothing(arg): pass

img = cv2.VideoCapture(0)
cv2.namedWindow('Filter')
cv2.createTrackbar('filter', 'Filter', 0, 1, nothing)

while True:
    _, frame = img.read()
    frame = cv2.flip(frame, 1)
    count = cv2.getTrackbarPos('filter', 'Filter')
    print("from loop",count)
    if(count==0):
        cv2.imshow('Filter', frame)
    else:
        filter4 = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        cv2.imshow('Filter', filter4)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break